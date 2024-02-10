$fn=150;


difference()
{
	union()
	{
		cylinder(h=5,d=6);
		translate([0,-3,0]) cube([5.5,6,5]);
	}
	// maybe set the rotation to 20 or 25 degrees and reduce the total length
	translate([2.6,-4,0]) rotate([0,30,0])cube(8);
}