$fn=50;

difference()
{
	union()
	{
		hull()
		{
			cylinder(h=9.2, d=44 + 0.3 + 1.2 * 2);
			translate([57,0,8/2]) sphere(d=5);
		}
		cylinder(h=2, d=122);
	}
	translate([0,0,-0.1]) cylinder(h=9.2 + 0.2, d=44 + 0.3);
}
