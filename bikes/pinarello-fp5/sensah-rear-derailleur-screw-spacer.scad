$fn=50;

intersection()
{
	difference()
	{
		cylinder(h=5.3, r=14);
		translate([0,0,-0.1]) cylinder(h=8, r=7);
	}
	translate([-14,0,0]) cube(14);
	rotate([0,0,-30]) translate([-14,0,0]) cube(14);
}
difference()
{
	hull()
	{
		translate([8, 7+5.3/2, 5.3/2]) rotate([0,90,0]) cylinder(h=4, d=5.3);
		translate([0,7,0]) cube([4,7,5.3]);

	}
	translate([7,9 + 0.65,2 + 0.65]) rotate([0,90,0]) cylinder(h=6.1, d=4.05);
}