/*
 * SPDX-FileCopyrightText: 2021-2022 Rafael G. Martins <rafael@rafaelmartins.eng.br>
 * SPDX-License-Identifier: CERN-OHL-S-2.0
 */

include <../../../share/openscad/eurorack-panel.scad>

width_in_hp = 4;
thickness = 2;

pcb_width = 18.288;
pcb_height = 107.442;

pcb0_x = (eurorack_panel_width(width_in_hp) - pcb_width) / 2;
pcb0_y = (eurorack_panel_height() - pcb_height) / 2;

pot_d = 7.8;
pot_distance_x = 11.4;
pot_distance_y = 11.94;
pot_spacing = 18.8;
pot_tag_width = 2.4;
pot_tag_length = 1.2;
pot_tag_height = 1;
pot_tag_from_center_x = -pot_tag_width / 2;
pot_tag_from_center_y = 6 - pot_tag_length / 2;

led_d = 3.2;
led_distance_x = 15.42;
led_distance_y = 80.14;

jack_d = 6.5;
jack_distance_x = 11.05;
jack_distance_y = 92.33;
jack_spacing = 10.03;

difference() {
    eurorack_panel(width_in_hp, thickness);

    translate([pcb0_x, pcb0_y, 0]) {
        for (i = [0 : 3]) {
            translate([pot_distance_x, pot_distance_y + i * pot_spacing, 0]) {
                cylinder(thickness, d=pot_d, $fn=20);
                translate([pot_tag_from_center_x, pot_tag_from_center_y, thickness - pot_tag_height])
                    cube([pot_tag_width, pot_tag_length, pot_tag_height]);
            }
        }

        translate([led_distance_x, led_distance_y, 0])
            cylinder(thickness, d=led_d, $fn=20);

        for (i = [0 : 1]) {
            translate([jack_distance_x, jack_distance_y + i * jack_spacing, 0])
                cylinder(thickness, d=jack_d, $fn=20);
        }
    }
}
