$fn=50;

difference()
{
	union()
	{
		cylinder(h=3, d=5.3);
		translate([0,0,3]) cylinder(h=5, d=5.3);
	}
	translate([0,0,3]) cylinder(h=5.01, d=4.3);
}
