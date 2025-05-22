$fn=150;

difference()
{
	cylinder(d=40, h=75);
	translate([0,0,5]) cylinder(d=29.4, h=75);
	translate([0,0,-1]) cylinder(d=10, h=10);
}