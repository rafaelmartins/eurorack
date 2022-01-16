/*
 * SPDX-FileCopyrightText: 2021-2022 Rafael G. Martins <rafael@rafaelmartins.eng.br>
 * SPDX-License-Identifier: CERN-OHL-S-2.0
 */

include <../../../share/openscad/eurorack-panel.scad>

width_in_hp = 16;
thickness = 2;

pcb_width = 71.3;
pcb_height = 53.3;
pcb_padding_y = 14.5;

pcb0_x = (eurorack_panel_width(width_in_hp) - pcb_width) / 2;
pcb0_y = (eurorack_panel_height() - 110) / 2 + pcb_padding_y;

screw_spacing_x = 66.2;
screw_spacing_y = 48.2;
screw_distance_x = (pcb_width - screw_spacing_x) / 2;
screw_distance_y = (pcb_height - screw_spacing_y) / 2;
screw_d = 2.5;
screw_base_d = 4.4;

screen_width = 50;
screen_height = 38;
screen_length = 2.5;
screen_distance_x = (pcb_width - screen_width) / 2;
screen_distance_y = (pcb_height - screen_height) / 2;

jack_d = 6.5;
jack_distance_x = screw_distance_x + 5;
jack_distance_y = screw_distance_y + screw_spacing_y + pcb_padding_y + 10;
button_d = 7.5;
button_spacing = (screw_spacing_x - 10) / 4;

difference() {
    union() {
        eurorack_panel(width_in_hp, thickness);
        for (i = [0 : 1])
            for (j = [0 : 1])
                translate([pcb0_x + screw_distance_x + i * screw_spacing_x,
                           pcb0_y + screw_distance_y + j * screw_spacing_y, thickness])
                    cylinder(screen_length, d=screw_base_d, $fn=20);
    }

    translate([pcb0_x, pcb0_y, 0]) {
        for (i = [0 : 1])
            for (j = [0 : 1])
                translate([screw_distance_x + i * screw_spacing_x,
                           screw_distance_y + j * screw_spacing_y, 0])
                    cylinder(thickness + screen_length, d=screw_d, $fn=20);

        translate([screen_distance_x, screen_distance_y, 0])
            cube([screen_width, screen_height, thickness]);

        for (i = [0 : 4]) {
            translate([jack_distance_x + i * button_spacing, jack_distance_y, 0]) {
                if (i == 0)
                    cylinder(thickness, d=jack_d, $fn=20);
                else
                    cylinder(thickness, d=button_d, $fn=20);
            }
        }
    }
}