/*
 * SPDX-FileCopyrightText: 2021-2022 Rafael G. Martins <rafael@rafaelmartins.eng.br>
 * SPDX-License-Identifier: CERN-OHL-S-2.0
 */

// this is based on A100 spec from doepfer https://doepfer.de/a100_man/a100m_e.htm

eurorack_panel_height = function() 128.5;
eurorack_panel_width = function(width_in_hp) width_in_hp * 5;

module eurorack_panel(width_in_hp, thickness=2) {
    difference() {
        cube([eurorack_panel_width(width_in_hp), eurorack_panel_height(), thickness]);

        translate([7.5, 3, 0])
            cylinder(thickness, d=3.2, $fn=20);
        translate([7.5, eurorack_panel_height() - 3, 0])
            cylinder(thickness, d=3.2, $fn=20);

        if (width_in_hp >= 8) {
            translate([eurorack_panel_width(width_in_hp) - 7.5, 3, 0])
                cylinder(thickness, d=3.2, $fn=20);
            translate([eurorack_panel_width(width_in_hp) - 7.5, eurorack_panel_height() - 3, 0])
                cylinder(thickness, d=3.2, $fn=20);
        }
    }
}
