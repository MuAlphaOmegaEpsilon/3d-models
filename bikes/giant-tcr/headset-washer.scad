$fn = 150;

module fork() { translate([0, 0, -15]) cylinder(h=50, d=28.6); }

module top_washer()
difference()
{	union()
	{	cylinder(d=30, h=4.5);
		translate([0,0,4.5]) cylinder(d1=30, d2=32, h=2.5);
		translate([0, 0, 7]) cylinder(d=39, h=1);
	}
	fork();
}

module bottom_washer()
difference()
{	union()
	{	cylinder(d=30, h=2);
		translate([0, 0, 2]) cylinder(d=33.5, h=6);
	}
	fork();
}

top_washer();
*bottom_washer();