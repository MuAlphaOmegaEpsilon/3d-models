$fn=50;

difference()
{
	scale([38/27,1,1]) cylinder(h=5, d=27 + 0.1);
	translate([0,0,-0.01]) cylinder(h=5 + 0.02, d=24 + 0.2);
}