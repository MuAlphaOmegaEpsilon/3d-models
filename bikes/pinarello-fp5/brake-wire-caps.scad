$fn=50;

difference()
{
	cylinder(d=6.75, h=18);
	cylinder(d=2.5, h=19);
	translate([0,0,-0.01]) cylinder(d=6, h = 17);
}
