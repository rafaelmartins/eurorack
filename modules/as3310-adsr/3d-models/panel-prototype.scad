/*
 * SPDX-FileCopyrightText: 2021-2022 Rafael G. Martins <rafael@rafaelmartins.eng.br>
 * SPDX-License-Identifier: CERN-OHL-S-2.0
 */

include <../../../share/openscad/eurorack-panel.scad>

// WARNING: this is a panel for my personal handwired prototype.
//          it won't match the "official" PCBs.

width_in_hp = 8;
thickness = 2;

pcb_width = 38.100;
pcb_height = 111.760;

pcb0_x = (eurorack_panel_width(width_in_hp) - pcb_width) / 2;
pcb0_y = (eurorack_panel_height() - pcb_height) / 2;

screw_base_distance_x = 2.54;
screw_base_distance_y = 33.02;
screw_base_spacing = 45.72;

pot_d = 7.8;
pot_distance_x = 31.75;
pot_distance_y = 21.59;
pot_spacing = 17.78;
pot_tag_width = 2.4;
pot_tag_length = 1.2;
pot_tag_height = 1;
pot_tag_from_center_x = -pot_tag_width / 2;
pot_tag_from_center_y = 6 - pot_tag_length / 2;

led_d = 3.2;
led_distance_x = 33.02;
led_distance_y = 92.71;

jack_d = 6.5;
jack_distance_x = 6.35;
jack_distance_y = 104.9;
jack_spacing = 25.4;

difference() {
    union() {
        eurorack_panel(width_in_hp, thickness);

        translate([pcb0_x, pcb0_y, thickness]) {
            for (i = [0 : 1]) {
                translate([screw_base_distance_x, screw_base_distance_y + i * screw_base_spacing, 0]) {
                    difference() {
                        cylinder(10, d=5, $fn=20);
                        cylinder(10, d=1.8, $fn=20);
                    }
                }
            }
        }
    }

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
            translate([jack_distance_x + i * jack_spacing, jack_distance_y, 0])
                cylinder(thickness, d=jack_d, $fn=20);
        }
    }
}
