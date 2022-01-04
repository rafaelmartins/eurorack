/*
 * usb-to-midi: A simple USB to serial midi converter.
 *
 * SPDX-FileCopyrightText: 2021-2022 Rafael G. Martins <rafael@rafaelmartins.eng.br>
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <usb-u2.h>
#include "midi.h"


void
usb_u2_reset_hook_cb(void)
{
    PORTD &= ~(1 << 4);
}


void
usb_u2_set_address_hook_cb(uint8_t addr)
{
    (void) addr;
    PORTD |= (1 << 4);
}


int
main(void)
{
    DDRD |= (1 << 4) | (1 << 5);

    midi_init();
    usb_u2_init();

    sei();

    while (1) {
        usb_u2_task();
        midi_task();
    }

    return 0;
}
