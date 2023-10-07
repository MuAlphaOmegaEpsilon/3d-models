$fn=50;

difference()
{
	hull()
	{
		cylinder(h=7.5, d=44 + 0.3 + 1.2 * 2);
		translate([-57,0,7.5/2]) sphere(d=5);
	}
	translate([0,0,-0.1]) cylinder(h=7.5 + 0.2, d=44 + 0.3);
}
