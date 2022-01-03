AVR_MCU   ?= atmega8u2
AVR_F_CPU ?= 16000000UL
AVR_LFUSE ?= 0xDF
AVR_HFUSE ?= 0xDF
AVR_EFUSE ?= 0xFF

FIRMWARE_NAME ?= usb-to-midi

FIRMWARE_CFLAGS = \
	-I. \
	-I../../../lib/usb-u2 \
	$(NULL)

FIRMWARE_SOURCES = \
	main.c \
	midi.c \
	usb_descriptors.c \
	../../../lib/usb-u2/usb-u2.c \
	$(NULL)

FIRMWARE_HEADERS = \
	midi.h \
	../../../lib/usb-u2/usb-u2.h \
	$(NULL)
