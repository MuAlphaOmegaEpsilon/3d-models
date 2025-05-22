$fn = 120;

module fork() { translate([0, 0, -15]) cylinder(h=50, d=28.6); }

difference()
{	union()
	{	cylinder(d=30, h=7);
		translate([0, 0, 7]) difference()
		{	cylinder(d=40.7, h=3);
			translate([0, 0, 1.5]) scale([1,1,1.25]) rotate_extrude() translate([20.1, 0, 0]) circle(d = 2 + 0.1);
		}
	}
	fork();
}