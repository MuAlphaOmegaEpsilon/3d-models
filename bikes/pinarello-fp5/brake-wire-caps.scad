$fn=50;

height=18;

difference()
{
	cylinder(d=6, h=height);
	translate([0,0,-0.1])cylinder(d=2.5, h=height+1);
	translate([0,0,1]) cylinder(d=5.1, h=height);
}
