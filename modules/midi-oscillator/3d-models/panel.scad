/*
 * SPDX-FileCopyrightText: 2021-2022 Rafael G. Martins <rafael@rafaelmartins.eng.br>
 * SPDX-License-Identifier: CERN-OHL-S-2.0
 */

include <../../../share/openscad/eurorack-panel.scad>

width_in_hp = 8;
thickness = 2;

pcb_width = 38.227;
pcb_height = 110.236;

pcb0_x = eurorack_panel_width(width_in_hp) - pcb_width - 0.5;
pcb0_y = (eurorack_panel_height() - pcb_height) / 2;

oled_hole_z = 3.4;
oled_hole_base_z = 2;
oled_hole_base_d = 4;
oled_hole_d = 1.8;
oled_hole_spacing_x = 23.5;
oled_hole_spacing_y = 23.8;
oled0_x = (eurorack_panel_width(width_in_hp) - oled_hole_spacing_x) / 2;
oled0_y = pcb0_y + 2;
oled_screen_width = 25.5;
oled_screen_height = 14.5;
oled_screen_distance_x = (oled_hole_spacing_x - oled_screen_width) / 2;
oled_screen_distance_y = 2.3;

encoder_distance_x = 23.23;
encoder_distance_y = 38.77;
encoder_dim_x = 13.4;
encoder_dim_y = 12.5;
encoder_spacer_z = 3.2;
encoder_washer_d = 12.4;
encoder_washer_spacing = 1.2;
encoder_d = 7.3;

jack_in_distance_x = 5.08;
jack_in_distance_y = 52.45;

jack_out_distance_x = 30.35;
jack_out1_distance_y = 75.06;
jack_out_spacing_y = 10.03;

jack_distance_x = 6.096;
jack_distance_y = 90.043;
jack_d = 6.5;

difference() {
    union() {
        eurorack_panel(width_in_hp, thickness);

        translate([oled0_x, oled0_y, thickness]) {
            cylinder(h=oled_hole_base_z, d=oled_hole_base_d, $fn=20);
            translate([oled_hole_spacing_x, 0, 0])
                cylinder(h=oled_hole_base_z, d=oled_hole_base_d, $fn=20);
            translate([0, oled_hole_spacing_y, 0]) {
                cylinder(h=oled_hole_base_z, d=oled_hole_base_d, $fn=20);
                translate([oled_hole_spacing_x, 0, 0])
                    cylinder(h=oled_hole_base_z, d=oled_hole_base_d, $fn=20);
            }
        }

        translate([pcb0_x, pcb0_y, thickness]) {
            translate([encoder_distance_x, encoder_distance_y, encoder_spacer_z / 2])
                cube([encoder_dim_x, encoder_dim_y, encoder_spacer_z], center=true);
        }
    }

    translate([oled0_x, oled0_y, 0]) {
        translate([oled_screen_distance_x, oled_screen_distance_y, 0])
            cube([oled_screen_width, oled_screen_height, thickness]);
        
        translate([0, 0, thickness + oled_hole_base_z - oled_hole_z + 0.1]) {
            cylinder(h=oled_hole_z, d=oled_hole_d, $fn=20);
            translate([oled_hole_spacing_x, 0, 0])
                cylinder(h=oled_hole_z, d=oled_hole_d, $fn=20);
            translate([0, oled_hole_spacing_y, 0]) {
                cylinder(h=oled_hole_z, d=oled_hole_d, $fn=20);
                translate([oled_hole_spacing_x, 0, 0])
                    cylinder(h=oled_hole_z, d=oled_hole_d, $fn=20);
            }
        }
    }

    translate([pcb0_x, pcb0_y, 0]) {
        translate([encoder_distance_x, encoder_distance_y, 0]) {
            cylinder(encoder_washer_spacing, d=encoder_washer_d, $fn=20);
            cylinder(thickness + encoder_spacer_z, d=encoder_d, $fn=20);
        }

        translate([jack_in_distance_x, jack_in_distance_y, 0])
            cylinder(thickness, d=jack_d, $fn=20);

        for (i = [0 : 3]) {
            translate([jack_out_distance_x, jack_out1_distance_y + (i * jack_out_spacing_y), 0])
                cylinder(thickness, d=jack_d, $fn=20);
        }
    }
}
