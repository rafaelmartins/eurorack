/*
 * usb-to-midi: A simple USB to serial midi converter.
 * Copyright (C) 2021 Rafael G. Martins <rafael@rafaelmartins.eng.br>
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#pragma once

#include <stdint.h>

void midi_init(void);
void midi_task(void);
void midi_push_byte(uint8_t b);
