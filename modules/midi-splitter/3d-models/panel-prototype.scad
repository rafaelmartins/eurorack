/*
 * SPDX-FileCopyrightText: 2021-2022 Rafael G. Martins <rafael@rafaelmartins.eng.br>
 * SPDX-License-Identifier: CERN-OHL-S-2.0
 */

include <../../../share/openscad/eurorack-panel.scad>

// WARNING: this is a panel for my personal handwired prototype.
//          it won't match the "official" PCBs.

width_in_hp = 4;
thickness = 2;

pcb_width = 17.78;
pcb_height = 109.22;

pcb0_x = (eurorack_panel_width(width_in_hp) - pcb_width) / 2;
pcb0_y = (eurorack_panel_height() - pcb_height) / 2;

led_d = 3.2;
led_distance_x = 12.7;
led_distance_y = 59.69;

jack_d = 6.5;
jack_top_distance_x = 11.43;
jack_top_distance_y = 5.84;
jack_top_spacing = 17.78;
jack_bottom_distance_x = 11.43;
jack_bottom_distance_y = 102.36;

difference() {
    eurorack_panel(width_in_hp, thickness);

    translate([pcb0_x, pcb0_y, 0]) {
        for (i = [0 : 2]) {
            translate([jack_top_distance_x, jack_top_distance_y + i * jack_top_spacing, 0]) {
                cylinder(thickness, d=jack_d, $fn=20);
            }
        }

        translate([led_distance_x, led_distance_y, 0])
            cylinder(thickness, d=led_d, $fn=20);

        translate([jack_bottom_distance_x, jack_bottom_distance_y, 0])
            cylinder(thickness, d=jack_d, $fn=20);
    }
}
