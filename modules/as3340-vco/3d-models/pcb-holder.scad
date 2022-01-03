// must print two of this

base_height = 9.5;
base_length = 5.08;
base_width = 5.08;
bar_height = 4;
bar_width = 5.08;
hole_distance = 31.18;
hole_diameter = 1.8;

translate([base_length / 2, base_height / 2, base_width / 2]) {
    difference() {
        union() {
            cube([base_length, base_height, base_width], center=true);
            translate([hole_distance, 0, 0])
                cube([base_length, base_height, base_width], center=true);
            translate([hole_distance / 2, 0, -(base_width - bar_width) / 2])
                cube([hole_distance, bar_height, bar_width], center=true);
        }

        rotate([-90, 0, 0]) {
            cylinder(h=base_height, d=hole_diameter, $fn=20, center=true);
            translate([hole_distance, 0, 0])
                cylinder(h=base_height, d=hole_diameter, $fn=20, center=true);
        }
    }
}