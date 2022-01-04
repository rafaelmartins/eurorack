/*
 * usb-to-midi: A simple USB to serial midi converter.
 *
 * SPDX-FileCopyrightText: 2021-2022 Rafael G. Martins <rafael@rafaelmartins.eng.br>
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <avr/io.h>
#include <usb-u2.h>
#include "midi.h"

static uint8_t buf[64]; // must match midi endpoint size


void
midi_init(void)
{
    // as the USART peripheral is used only by midi, we control it from here.
    UBRR1H = 0;
    UBRR1L = 0x3f;  // 31250bps with U2X
    UCSR1A = (1 << U2X1);
    UCSR1B = (1 << TXEN1);
    UCSR1C = (1 << UCSZ10) | (1 << UCSZ11);
}


void
midi_task(void)
{
    usb_u2_endpoint_select(1);

    if (!usb_u2_endpoint_out_received())
        return;

    uint8_t len = usb_u2_endpoint_out(buf, sizeof(buf));
    if (len == 0)
        return;

    for (uint8_t i = 0; i < len; i++) {
        PORTD |= (1 << 5);
        midi_push_byte(buf[i]);
        PORTD &= ~(1 << 5);
    }
}


void
midi_push_byte(uint8_t b)
{
    // bytes coming from usb are not raw midi bytes. usb midi spec includes a
    // byte at the beginning of the event, including the cable number and the
    // code index number. also, the events are always 4 bytes, even if the
    // wrapped midi event is shorter (or longer, in the case of sysex) than
    // that.

    static uint8_t buf[3];
    static uint8_t idx = 0;
    static uint8_t len = 0;

    if (idx == 0) {
        // we ignore cable number. our descriptors only have one jack anyway.
        // the code index numbers are from usb midi class definition.

        switch (b & 0xf) {
            case 0x0:  // Miscellaneous function codes. Reserved for future
                       // extensions
            case 0x1:  // Cable events. Reserved for future expansion.
                len = 0;
                break;

            case 0x5:  // Single-byte System Common Message or SysEx ends
                       // with following single byte.
            case 0xf:  // Single Byte
                len = 1;
                break;

            case 0x2:  // Two-byte System Common messages like MTC,
                       // SongSelect, etc.
            case 0x6:  // SysEx ends with following two bytes.
            case 0xc:  // Program Change
            case 0xd:  // Channel Pressure
                len = 2;
                break;

            default:  // everything else
                len = 3;
                break;
        }
    }
    else if (idx <= len) {
        buf[idx - 1] = b;
    }

    if (++idx > 3) {
        for (uint8_t i = 0; i < len; i++) {
            while (!(UCSR1A & (1 << UDRE1)));
            UCSR1A |= (1 << TXC1);  // clean TXC
            UDR1 = buf[i];
            while (!(UCSR1A & (1 << TXC1)));
        }
        idx = 0;
    }
}
