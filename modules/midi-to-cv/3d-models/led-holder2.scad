/*
 * SPDX-FileCopyrightText: 2021-2022 Rafael G. Martins <rafael@rafaelmartins.eng.br>
 * SPDX-License-Identifier: CERN-OHL-S-2.0
 */

include <../../../share/openscad/eurorack-led-holder.scad>

num_leds = 2;
leds_spacing = 14.86;

eurorack_led_holder(num_leds, leds_spacing);
