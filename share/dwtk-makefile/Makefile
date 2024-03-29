#
# dwtk-makefile: A generic Makefile for AVR projects using dwtk.
# Copyright (C) 2020 Rafael G. Martins <rafael@rafaelmartins.eng.br>
#
# This program can be distributed under the terms of the BSD 3-Clause License.
# See https://opensource.org/licenses/BSD-3-Clause.
#

# DO NOT EDIT THIS FILE. PLEASE EDIT dwtk-config.mk OR CREATE dwtk-config-local.mk!

all: .all

include dwtk-config.mk
-include dwtk-config-local.mk

ifndef AVR_MCU
$(error AVR_MCU must be defined)
endif

ifndef FIRMWARE_SOURCES
$(error FIRMWARE_SOURCES must be defined)
endif

AVR_GCC     ?= $(shell which avr-gcc 2> /dev/null)
AVR_OBJCOPY ?= $(shell which avr-objcopy 2> /dev/null)
AVR_SIZE    ?= $(shell which avr-size 2> /dev/null)
DWTK        ?= $(shell which dwtk 2> /dev/null)

BUILDDIR      ?= .
FIRMWARE_NAME ?= firmware

OPTIMIZATION = -Os
DEBUG = -DNDEBUG
FIRMWARE_FILENAME = $(FIRMWARE_NAME)
ifneq ($(AVR_RELEASE),1)
OPTIMIZATION = -Og
DEBUG = -DDEBUG
FIRMWARE_FILENAME = $(FIRMWARE_NAME)-debug
endif

CFLAGS = \
	-std=gnu99 \
	-mmcu="$(AVR_MCU)" \
	$(OPTIMIZATION) \
	$(DEBUG) \
	-ggdb \
	-funsigned-char \
	-funsigned-bitfields \
	-fshort-enums \
	-Wall \
	-Wextra \
	-Werror \
	$(NULL)

ifdef AVR_F_CPU
CFLAGS += -DF_CPU="$(AVR_F_CPU)"
endif

DWTK_CMD = $(DWTK)
ifdef DWTK_ICE
DWTK_CMD += -i "$(DWTK_ICE)"
endif
ifdef DWTK_SERIAL
DWTK_CMD += -s "$(DWTK_SERIAL)"
endif
ifdef DWTK_DEBUG
DWTK_CMD += -d
endif

FUSES =
ifdef AVR_LFUSE
FUSES += --lfuse "$(AVR_LFUSE)"
endif
ifdef AVR_HFUSE
FUSES += --hfuse "$(AVR_HFUSE)"
endif
ifdef AVR_EFUSE
FUSES += --efuse "$(AVR_EFUSE)"
endif
ifdef AVR_LOCK
FUSES += --lock "$(AVR_LOCK)"
endif

GDBSERVER =
ifdef GDBSERVER_ADDR
GDBSERVER += -a "$(GDBSERVER_ADDR)"
endif

.all: $(BUILDDIR)/$(FIRMWARE_FILENAME).elf $(BUILDDIR)/$(FIRMWARE_FILENAME).hex

.check-dwtk:
	@test -n "$(DWTK)" || ( echo "error: dwtk not found"; exit 1 )

$(BUILDDIR):
	mkdir -p "$(BUILDDIR)"

$(BUILDDIR)/$(FIRMWARE_FILENAME).hex: $(BUILDDIR)/$(FIRMWARE_FILENAME).elf | $(BUILDDIR)
	@test -n "$(AVR_OBJCOPY)" || ( echo "error: avr-objcopy not found"; exit 1 )
	$(AVR_OBJCOPY) -O ihex -j .data -j .text $< $@

$(BUILDDIR)/$(FIRMWARE_FILENAME).elf: $(FIRMWARE_SOURCES) $(FIRMWARE_HEADERS) Makefile dwtk-config.mk | $(BUILDDIR)
	@test -n "$(AVR_GCC)" || ( echo "error: avr-gcc not found" ; exit 1 )
	$(AVR_GCC) -o $@ $(CFLAGS) $(FIRMWARE_CFLAGS) $(FIRMWARE_SOURCES)
	@$(MAKE) --no-print-directory size

size: $(BUILDDIR)/$(FIRMWARE_FILENAME).elf
	@test -n "$(AVR_SIZE)" || ( echo "error: avr-size not found"; exit 1 )
	echo; $(AVR_SIZE) --mcu="$(AVR_MCU)" -C $<

enable: .check-dwtk
	$(DWTK_CMD) enable

disable: .check-dwtk
	$(DWTK_CMD) disable

flash: $(BUILDDIR)/$(FIRMWARE_FILENAME).elf .check-dwtk
	$(DWTK_CMD) flash $(BUILDDIR)/$(FIRMWARE_FILENAME).elf

verify: $(BUILDDIR)/$(FIRMWARE_FILENAME).elf .check-dwtk
	$(DWTK_CMD) verify $(BUILDDIR)/$(FIRMWARE_FILENAME).elf

fuses: .check-dwtk
	$(DWTK_CMD) fuses $(FUSES)

gdbserver: .check-dwtk
	$(DWTK_CMD) gdbserver $(GDBSERVER)

info: .check-dwtk
	$(DWTK_CMD) info

clean:
	-$(RM) \
		$(BUILDDIR)/$(FIRMWARE_FILENAME).elf \
		$(BUILDDIR)/$(FIRMWARE_FILENAME).hex

.PHONY: all .all .check-dwtk size enable disable flash verify fuses gdbserver info clean
