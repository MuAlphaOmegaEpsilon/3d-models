$fn=50;

height=3.5;
radius=3.5/2;

translate([0,radius,0]) cube([10, 16.5-height, 3.5]);
translate([0,16.5-radius,radius]) rotate([0,90,0]) cylinder(d=3.5, h=10);
translate([0,radius,radius]) rotate([0,90,0]) cylinder(d=3.5, h=10);