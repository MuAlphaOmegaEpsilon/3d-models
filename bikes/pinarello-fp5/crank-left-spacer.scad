$fn=50;

difference()
{
	union()
	{
		cylinder(h=2.5 + 6 + 6.5, d=38);
		intersection()
		{
			scale([53/38,1,1]) cylinder(h=2.5 + 6 + 6.5, d=38);
			translate([0,-53/2,0]) cube(53);
		}
	}
	translate([0,0,-0.01]) cylinder(h=2.5 + 0.02, d=24 + 0.3);
	translate([0,0,2.5]) cylinder(h=6 + 0.01, d=31);
	translate([0,0,2.5 + 6]) cylinder(h=6.5 + 0.01, d=38.35);
	rotate_extrude()
	{
		translate([20 + 3/2 - 0.75,0,0]) circle(d=3);
	}
	translate([0,0,2.5+6+6.5]) rotate_extrude()
	{
		translate([39/2,0]) circle(d=2);
	}
}
