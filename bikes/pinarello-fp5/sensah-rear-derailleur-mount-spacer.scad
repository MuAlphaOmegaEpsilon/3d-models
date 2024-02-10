$fn=250;

difference()
{
	union()
	{
		cylinder(d=15.7, h=2.5);
		cylinder(d=20, h=1);
	}
	translate([0,0,-0.1]) cylinder(d=13, h=3);
	translate([0,10.7,0.9]) cube([20,5,2], center=true);
}
