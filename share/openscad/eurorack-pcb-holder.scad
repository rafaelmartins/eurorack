/*
 * SPDX-FileCopyrightText: 2021-2022 Rafael G. Martins <rafael@rafaelmartins.eng.br>
 * SPDX-License-Identifier: CERN-OHL-S-2.0
 */

module eurorack_pcb_holder(hole_spacing, hole_diameter=1.8, width=5.08, height=9.5) {
    translate([width / 2, height / 2, width / 2]) {
        difference() {
            union() {
                cube([width, height, width], center=true);
                translate([hole_spacing, 0, 0])
                    cube([width, height, width], center=true);
                translate([hole_spacing / 2, 0, 0])
                    cube([hole_spacing, height / 3, width], center=true);
            }

            rotate([-90, 0, 0]) {
                cylinder(h=height, d=hole_diameter, $fn=20, center=true);
                translate([hole_spacing, 0, 0])
                    cylinder(h=height, d=hole_diameter, $fn=20, center=true);
            }
        }
    }
}
