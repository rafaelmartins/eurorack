cube([1, 3, 6]);
translate([1, 0, 0]) {
    translate([0, (3 - 1.8) / 2, 0])
        cube([1, 1.8, 6]);
    translate([1, 0, 0]) {
        cube([10.67 - 1, 3, 6]);
        translate([10.67 - 1, 0, 0]) {
            translate([0, (3 - 1.8) / 2, 0])
                cube([1, 1.8, 6]);
            translate([1, 0, 0])
                cube([1, 3, 6]);
        }
    }
}