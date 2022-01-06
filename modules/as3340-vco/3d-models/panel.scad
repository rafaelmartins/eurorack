/*
 * SPDX-FileCopyrightText: 2021-2022 Rafael G. Martins <rafael@rafaelmartins.eng.br>
 * SPDX-License-Identifier: CERN-OHL-S-2.0
 */

include <../../../share/openscad/eurorack-panel.scad>

width_in_hp = 8;
thickness = 2;

pcb_width = 37.782;
pcb_height = 107.315;

pcb0_x = (eurorack_panel_width(width_in_hp) - pcb_width) / 2;
pcb0_y = (eurorack_panel_height() - pcb_height) / 2;

jack_d = 6.5;
jack_top_distance_x = 5.84;
jack_top_distance_y = 7.37;
jack_top_spacing_x = 10.03;
jack_top_spacing_y = 16.76;
jack_bottom_distance_x = 5.78;
jack_bottom_distance_y = 99.31;
jack_bottom_spacing = 13.08;

pot_d = 7.8;
pot_distance_x = 29.95;
pot_distance_y = 5.21;
pot_spacing = 16.89;
pot_tag_width = 2.4;
pot_tag_length = 1.2;
pot_tag_height = 1;
pot_tag_from_center_x = -pot_tag_width / 2;
pot_tag_from_center_y = 6 + pot_tag_length / 2;

difference() {
    eurorack_panel(width_in_hp, thickness);

    translate([pcb0_x, pcb0_y, 0]) {
        translate([jack_top_distance_x, jack_top_distance_y, 0]) {
            cylinder(thickness, d=jack_d, $fn=20);
            translate([jack_top_spacing_x, 0, 0])
                cylinder(thickness, d=jack_d, $fn=20);
            translate([0, jack_top_spacing_y, 0])
                cylinder(thickness, d=jack_d, $fn=20);
        }

        for (i = [0 : 2]) {
            translate([pot_distance_x, pot_distance_y + i * pot_spacing, 0]) {
                cylinder(thickness, d=pot_d, $fn=20);
                translate([pot_tag_from_center_x, pot_tag_from_center_y, thickness - pot_tag_height])
                    cube([pot_tag_width, pot_tag_length, pot_tag_height]);
            }
        }

        for (i = [0 : 2]) {
            translate([jack_bottom_distance_x + i * jack_bottom_spacing, jack_bottom_distance_y, 0])
                cylinder(thickness, d=jack_d, $fn=20);
        }
    }
}
