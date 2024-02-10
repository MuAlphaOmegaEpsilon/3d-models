$fn=250;

use <../common/thread.scad>

module kaweco_sport()
{
	difference()
	{
		hull()
		{
			cylinder(d=4, h=0.1);
			translate([0,0,2]) cylinder(d=10.40,h=15);
		}
		// sphere(d=3.5);
	}
	translate([0,0,17]) cylinder(d=11.1, h=21);
	translate([0,0,38]) hull()
	{
		cylinder(d=13.2, h=0.1);
		translate([0,0,5]) cylinder(d=14.2, h=0.1, $fn=8);
	}
	translate([0,0,43.1]) cylinder(d=14.2, h=47.8, $fn=8);
	translate([0,0,90.9]) hull()
	{
		cylinder(d=14.2, h=0.1, $fn=8);
		translate([0,0,5]) cylinder(d=13.2, h=0.1);
	}
	translate([0,0,95.9]) hull()
	{
		cylinder(d=13.2, h=0.1);
		translate([0,0,11]) cylinder(d=11.8, h=0.1);
	}
	translate([0,0,107]) hull()
	{
		cylinder(d=11.8, h=0.01);
		translate([0,0,2.5]) sphere(d=0.1);
	}
	// Clip (the depth of the clip should be 6mm, not 4, this change is just for the sake of the container)
	rotate([0,0,22.5]) translate([6.55,-2.5,60]) cube([4,5,36]);
	translate([0,0,83]) cylinder(d=15, h=7, $fn=8);
}

module container()
{
	// h kaweco 10.7
    // h refer  150
	hull()
	{
		cylinder(d=38, h=0.1);
		translate([0,0,4]) cylinder(d=40, h=0.1);
	}
	translate([0,0,4]) cylinder(d=40,h=18);
	translate([0,0,22]) hull()
	{
		cylinder(d=40, h=0.1);
		translate([0,0,4]) cylinder(d=44, h=0.1);
	}
	translate([0,0,26]) cylinder(d=44, h=50);
	translate([0,0,76]) thread_h(id=42,od=44,h=10,pitch=3);

}

module cap()
{	
	difference()
	{
		union()
		{
			hull()
			{
				cylinder(d=45, h=0.01);
				translate([0,0,20]) cylinder(d=52, h=0.01, $fn=8);
			}
			translate([0,0,20]) cylinder(d=52, h=70, $fn=8);
			translate([0,0,90]) hull()
			{
				cylinder(d=52, h=0.01, $fn=8);
				translate([0,0,14]) cylinder(d=45, h=0.01);
			}
			translate([0,0,104]) hull()
			{
				cylinder(d=45, h=0.01);
				translate([0,0,10]) cylinder(d=40.5, h=0.01);
			}
			translate([0,0,114]) hull()
			{
				cylinder(d=40.5, h=0.01);
				translate([0,0,2]) cylinder(d=34, h=0.01);
			}		
		}
		translate([0,0,-0.01]) cylinder(d=38, h=70);
		translate([0,0,-50]) container();
	}
}

difference()
{
	container();
	translate([-4,3,0]) union()
	{
		translate([12,0,4]) kaweco_sport();
		translate([cos(120) * 12 + 3.5,sin(120) * 12 - 4,4]) kaweco_sport();
		translate([cos(240) * 12 - 2,sin(240) * 12 + 2,4]) kaweco_sport();
		translate([cos(120) * 12 + 12.5,sin(120) * 12 - 25,4]) kaweco_sport();
	}
	
}

translate([8,3,4]) kaweco_sport();
translate([0,0,50]) !cap();