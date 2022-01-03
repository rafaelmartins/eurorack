/*
 * usb-to-midi: A simple USB to serial midi converter.
 * Copyright (C) 2021 Rafael G. Martins <rafael@rafaelmartins.eng.br>
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <avr/pgmspace.h>
#include <stddef.h>
#include <stdint.h>
#include <usb-u2.h>

typedef struct {
    uint8_t  bLength;
    uint8_t  bDescriptorType;
    uint8_t  bDescriptorSubtype;
    uint16_t bcdADC;
    uint16_t wTotalLength;
    uint8_t  bInCollection;
    uint8_t  baInterfaceNr;
} __attribute__((packed)) audio_ctrl_header_t;

typedef struct {
    uint8_t  bLength;
    uint8_t  bDescriptorType;
    uint8_t  bDescriptorSubtype;
    uint16_t bcdMSC;
    uint16_t wTotalLength;
} __attribute__((packed)) midi_streaming_header_t;

typedef struct {
    uint8_t bLength;
    uint8_t bDescriptorType;
    uint8_t bDescriptorSubtype;
    uint8_t bJackType;
    uint8_t bJackID;
    uint8_t iJack;
} __attribute__((packed)) midi_streaming_in_jack_t;

typedef struct {
    uint8_t bLength;
    uint8_t bDescriptorType;
    uint8_t bDescriptorSubtype;
    uint8_t bJackType;
    uint8_t bJackID;
    uint8_t bNrInputPins;
    uint8_t baSourceID;
    uint8_t baSourcePin;
    uint8_t iJack;
} __attribute__((packed)) midi_streaming_out_jack_t;

typedef struct {
    uint8_t bLength;
    uint8_t bDescriptorType;
    uint8_t bDescriptorSubtype;
    uint8_t bNumEmbMIDIJack;
    uint8_t baAssocJackID;
} __attribute__((packed)) midi_streaming_endpoint_descriptor_t;

typedef struct {
    usb_u2_config_descriptor_t           config_descriptor;
    usb_u2_interface_descriptor_t        audio_ctrl_interface;
    audio_ctrl_header_t                  audio_ctrl_header;
    usb_u2_interface_descriptor_t        midi_streaming_interface;
    midi_streaming_header_t              midi_streaming_header;
    midi_streaming_in_jack_t             midi_streaming_in_jack;
    midi_streaming_out_jack_t            midi_streaming_out_jack;
    usb_u2_endpoint_descriptor_t         endpoint;
    midi_streaming_endpoint_descriptor_t midi_streaming_endpoint;
} __attribute__((packed)) config_descriptor_t;

static const usb_u2_device_descriptor_t device_descriptor PROGMEM = {
    .bLength            = sizeof(usb_u2_device_descriptor_t),
    .bDescriptorType    = USB_U2_DESCR_TYPE_DEVICE,
    .bcdUSB             = 0x0200,
    .bDeviceClass       = 0,
    .bDeviceSubClass    = 0,
    .bDeviceProtocol    = 0,
    .bMaxPacketSize0    = 64,
    .idVendor           = 0x16c0,
    .idProduct          = 0x05e4,
    .bcdDevice          = 0,
    .iManufacturer      = 1,
    .iProduct           = 2,
    .iSerialNumber      = USB_U2_DESCR_STR_IDX_SERIAL_INTERNAL,
    .bNumConfigurations = 1,
};

const usb_u2_device_descriptor_t*
usb_u2_device_descriptor_cb(void)
{
    return &device_descriptor;
}


static const config_descriptor_t config_descriptor PROGMEM = {
    .config_descriptor = {
        .bLength             = sizeof(usb_u2_config_descriptor_t),
        .bDescriptorType     = USB_U2_DESCR_TYPE_CONFIGURATION,
        .wTotalLength        = sizeof(config_descriptor_t),
        .bNumInterfaces      = 2,
        .bConfigurationValue = 1,
        .iConfiguration      = 0,
        .bmAttributes        = (1 << 7),
        .bMaxPower           = 50,
    },
    .audio_ctrl_interface = {
        .bLength            = sizeof(usb_u2_interface_descriptor_t),
        .bDescriptorType    = USB_U2_DESCR_TYPE_INTERFACE,
        .bInterfaceNumber   = 0,
        .bAlternateSetting  = 0,
        .bNumEndpoints      = 0,
        .bInterfaceClass    = USB_U2_DESCR_DEV_CLASS_AUDIO,
        .bInterfaceSubClass = 1, // AUDIOCONTROL
        .bInterfaceProtocol = 0,
        .iInterface         = 0,
    },
    .audio_ctrl_header = {
        .bLength            = sizeof(audio_ctrl_header_t),
        .bDescriptorType    = USB_U2_REQ_TYPE_CLASS | USB_U2_DESCR_TYPE_INTERFACE,
        .bDescriptorSubtype = 1, // UAC_HEADER
        .bcdADC             = 0x0100,
        .wTotalLength       = sizeof(audio_ctrl_header_t),
        .bInCollection      = 1,
        .baInterfaceNr      = 1,
    },
    .midi_streaming_interface = {
        .bLength            = sizeof(usb_u2_interface_descriptor_t),
        .bDescriptorType    = USB_U2_DESCR_TYPE_INTERFACE,
        .bInterfaceNumber   = 1,
        .bAlternateSetting  = 0,
        .bNumEndpoints      = 1,
        .bInterfaceClass    = USB_U2_DESCR_DEV_CLASS_AUDIO,
        .bInterfaceSubClass = 3, // MIDISTREAMING
        .bInterfaceProtocol = 0,
        .iInterface         = 0,
    },
    .midi_streaming_header = {
        .bLength            = sizeof(midi_streaming_header_t),
        .bDescriptorType    = USB_U2_REQ_TYPE_CLASS | USB_U2_DESCR_TYPE_INTERFACE,
        .bDescriptorSubtype = 1, // MS_HEADER
        .bcdMSC             = 0x0100,
        .wTotalLength       = sizeof(midi_streaming_header_t) +
                              sizeof(midi_streaming_in_jack_t) +
                              sizeof(midi_streaming_out_jack_t),
    },
    .midi_streaming_in_jack = {
        .bLength            = sizeof(midi_streaming_in_jack_t),
        .bDescriptorType    = USB_U2_REQ_TYPE_CLASS | USB_U2_DESCR_TYPE_INTERFACE,
        .bDescriptorSubtype = 2, // MS_MIDI_IN_JACK
        .bJackType          = 1, // MS_EMBEDDED
        .bJackID            = 1,
        .iJack              = 0,
    },
    .midi_streaming_out_jack = {
        .bLength            = sizeof(midi_streaming_out_jack_t),
        .bDescriptorType    = USB_U2_REQ_TYPE_CLASS | USB_U2_DESCR_TYPE_INTERFACE,
        .bDescriptorSubtype = 3, // MS_MIDI_OUT_JACK
        .bJackType          = 2, // MS_EXTERNAL
        .bJackID            = 2,
        .bNrInputPins       = 1,
        .baSourceID         = 1,
        .baSourcePin        = 1,
        .iJack              = 0,
    },
    .endpoint = {
        .bLength          = sizeof(usb_u2_endpoint_descriptor_t),
        .bDescriptorType  = USB_U2_DESCR_TYPE_ENDPOINT,
        .bEndpointAddress = USB_U2_DESCR_EPT_ADDR_DIR_OUT | 1,
        .bmAttributes     = USB_U2_DESCR_EPT_ATTR_BULK,
        .wMaxPacketSize   = 64,
        .bInterval        = 1,
        .bRefresh         = 0,
        .bSynchAddress    = 0,
    },
    .midi_streaming_endpoint = {
        .bLength            = sizeof(midi_streaming_endpoint_descriptor_t),
        .bDescriptorType    = USB_U2_REQ_TYPE_CLASS | USB_U2_DESCR_TYPE_ENDPOINT,
        .bDescriptorSubtype = 1, // MS_GENERAL
        .bNumEmbMIDIJack    = 1,
        .baAssocJackID      = 1,
    },
};

const usb_u2_config_descriptor_t*
usb_u2_config_descriptor_cb(uint8_t config_id)
{
    (void) config_id;
    return &(config_descriptor.config_descriptor);
}


#define MANUFACTURER L"rgm.io"
#define PRODUCT L"usb-to-midi"

static const usb_u2_string_descriptor_t manufacturer PROGMEM = {
    .bLength = sizeof(MANUFACTURER),
    .bDescriptorType = USB_U2_DESCR_TYPE_STRING,
    .wData = MANUFACTURER,
};

static const usb_u2_string_descriptor_t product PROGMEM = {
    .bLength = sizeof(PRODUCT),
    .bDescriptorType = USB_U2_DESCR_TYPE_STRING,
    .wData = PRODUCT,
};

const usb_u2_string_descriptor_t*
usb_u2_string_descriptor_cb(uint8_t string_id, uint16_t lang_id)
{
    (void) lang_id;

    switch (string_id) {
        case 1:
            return &manufacturer;
        case 2:
            return &product;
    }
    return NULL;
}


void
usb_u2_configure_endpoints_cb(uint8_t config_id)
{
    (void) config_id;
    usb_u2_configure_endpoint(&(config_descriptor.endpoint));
}
