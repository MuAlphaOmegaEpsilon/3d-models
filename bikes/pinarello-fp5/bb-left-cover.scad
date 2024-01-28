$fn=50;

difference()
{
	hull()
	{
		cylinder(h=7, d=48 + 0.35);
		translate([-57,0,2.5]) sphere(d=5);
	}
	cylinder(h=7, d=46);
	translate([0,0,-0.01]) cylinder(h=7 + 0.02, d=44 + 0.35);
}
