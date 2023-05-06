$fn=350; // faces number: smoother polygons

intersection()
{
	difference()
	{
		translate([3,0,0])                    cylinder(h=20,    r=7.5);
		translate([0,0,-0.01])                cylinder(h=20.02, r=7.5);
		translate([6,-1,10]) rotate([0,90,0]) cylinder(h=5,     r=3.0);
	}
	translate([0,-7.5,0]) cube([11,15,20]);
	union()
	{
		translate([6,-10,0])        cube(20);
		translate([8.2,6.5,-0.01])  cylinder(h=20.02, r=3);
		translate([8.2,-6.5,-0.01]) cylinder(h=20.02, r=3);
	}
}
