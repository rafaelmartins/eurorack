module eurorack_led_holder(num_leds, leds_spacing=0) {
    margin = 1;
    width = 3;
    height = 6;
    led_width = 1.8;
    led_length = 1;
    length = (num_leds - 1) * leds_spacing + 2 * margin + led_length;

    difference() {
        cube([length, width, height]);
        for (i = [0 : num_leds - 1]) {
            translate([margin + i * leds_spacing, 0, 0]) {
                cube([led_length, (width - led_width) / 2, height]);
                translate([0, width - ((width - led_width) / 2), 0])
                    cube([led_length, (width - led_width) / 2, height]);
            }
        }
    }
}