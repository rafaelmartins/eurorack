/*
 * SPDX-FileCopyrightText: 2021-2022 Rafael G. Martins <rafael@rafaelmartins.eng.br>
 * SPDX-License-Identifier: CERN-OHL-S-2.0
 */

include <../../../share/openscad/eurorack-panel.scad>

width_in_hp = 4;
thickness = 2;

pcb_width = 17.526;
pcb_height = 107.315;
pcb_hole_padding = 3.556;
pcb_hole_distance_x = pcb_width - (2 * pcb_hole_padding);
pcb_hole_distance_y = pcb_height - (2 * pcb_hole_padding);

screw0_x = ((eurorack_panel_width(width_in_hp) - pcb_width) / 2) + pcb_hole_padding;
screw0_y = ((eurorack_panel_height() - pcb_height) / 2) + pcb_hole_padding;

usb_width = 12.8;
usb_height = 11.3;
usb_distance_x = ((pcb_width - usb_width) / 2) - pcb_hole_padding;
usb_distance_y = 3.5;

led1_distance_x = -0.64;
led1_distance_y = 64.39;
led_d = 3.2;
led_spacing_y = 10.67;

jack_distance_x = 5.21;
jack_distance_y = 90.04;
jack_d = 6.5;


module pcb_screw_base() {
    difference() {
        cylinder(10, d=5, $fn=20);
        cylinder(10, d=1.8, $fn=20);
    }
}


difference() {
    union() {
        eurorack_panel(width_in_hp, thickness);

        translate([screw0_x, screw0_y, thickness]) {
            pcb_screw_base();
            translate([pcb_hole_distance_x, 0, 0])
                pcb_screw_base();
            translate([0, pcb_hole_distance_y, 0]) {
                pcb_screw_base();
                translate([pcb_hole_distance_x, 0, 0])
                    pcb_screw_base();
            }
        }
    }

    translate([screw0_x, screw0_y, 0]) {
        translate([usb_distance_x, usb_distance_y, 0])
            cube([usb_width, usb_height, thickness]);

        translate([led1_distance_x, led1_distance_y, 0]) {
            cylinder(thickness, d=led_d, $fn=20);
            translate([0, led_spacing_y, 0])
                cylinder(thickness, d=led_d, $fn=20);
        }

        translate([jack_distance_x, jack_distance_y, 0])
            cylinder(thickness, d=jack_d, $fn=20);
    }
}
