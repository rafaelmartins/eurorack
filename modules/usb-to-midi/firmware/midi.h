/*
 * usb-to-midi: A simple USB to serial midi converter.
 *
 * SPDX-FileCopyrightText: 2021-2022 Rafael G. Martins <rafael@rafaelmartins.eng.br>
 * SPDX-License-Identifier: BSD-3-Clause
 */

#pragma once

#include <stdint.h>

void midi_init(void);
void midi_task(void);
