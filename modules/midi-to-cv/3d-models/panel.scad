/*
 * SPDX-FileCopyrightText: 2021-2022 Rafael G. Martins <rafael@rafaelmartins.eng.br>
 * SPDX-License-Identifier: CERN-OHL-S-2.0
 */

include <../../../share/openscad/eurorack-panel.scad>

width_in_hp = 8;
thickness = 2;

pcb_width = 38.227;
pcb_height = 110.109;

pcb0_x = (eurorack_panel_width(width_in_hp) - pcb_width) / 2;
pcb0_y = (eurorack_panel_height() - pcb_height) / 2;

led_d = 3.2;
led_in_distance_x = 2.29;
led_in_distance_y = 20.78;
led_out_distance_y = 87.06;
led_out_distance_x = 35.59;
led_out_spacing = 14.86;

jack_d = 6.5;
jack_in_distance_x = 7.24;
jack_in_distance_y = 7.3;
jack_out_distance_x = 5.02;
jack_out_distance_y = 87.06;
jack_out_spacing_x = 10.03;
jack_out_spacing_y = 14.86;

difference() {
    eurorack_panel(width_in_hp, thickness);

    translate([pcb0_x, pcb0_y, 0]) {
        translate([jack_in_distance_x, jack_in_distance_y, 0])
            cylinder(thickness, d=jack_d, $fn=20);

        translate([led_in_distance_x, led_in_distance_y, 0])
            cylinder(thickness, d=led_d, $fn=20);

        for (i = [0 : 2]) {
            for (j = [0 : 1]) {
                translate([jack_out_distance_x + i * jack_out_spacing_x,
                           jack_out_distance_y + j * jack_out_spacing_y, 0])
                    cylinder(thickness, d=jack_d, $fn=20);
            }
        }

        translate([led_out_distance_x, led_out_distance_y, 0]) {
            cylinder(thickness, d=led_d, $fn=20);
            translate([0, led_out_spacing, 0])
                cylinder(thickness, d=led_d, $fn=20);
        }
    }
}
