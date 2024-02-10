$fn=50;

module spool()
{
	difference()
	{
		union()
		{
			cylinder(d=195, h=3);
			cylinder(d=80, h=61);
			translate([0,0,58]) cylinder(d=195, h=3);
		}
		translate([0,0,-0.1]) cylinder(d=74, h=61.2);
	}
}
spool();

translate([33,0,0]) cylinder(d=8, h=61);
translate([-33,0,0]) cylinder(d=8, h=61);
translate([0,33,0]) cylinder(d=8, h=61);
translate([0,-33,0]) cylinder(d=8, h=61);
translate([-4,-33,0]) cube([8,66,61]);
translate([-33,-4,0]) cube([66,8,61]);
translate([0,0,-7]) cylinder(d=8, h=61+2*7);