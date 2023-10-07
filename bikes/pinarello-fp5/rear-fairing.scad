$fn=100;

module seattube()
{
	translate([0,0,-290]) scale([37/36,1,1]) cylinder(h=600, d=36);
}
module seatstay()
{
	hull()
	{
		translate([-3.7,0,0]) scale([18/25.5,1,1]) cylinder(h=400, d=25.5);
		translate([15.25,0,0]) cylinder(h=400, d=12);
	}
	/* translate([-8.2,0,5]) color("black") cube([9,25.5,10], center=true); */
	/* translate([18.25,0,5]) color("black") cube([6,12,10], center=true); */
	/* translate([4.25,0,3]) color("black") cube(6, center=true); */
	/* translate([4.25,0,17]) color([0,0,0,0.1]) cube(34, center=true); */
}
module frame()
{
	seattube();
	translate([270,0,0]) rotate([0,-44,0]) seatstay();
}
module wheel()
{
	translate([368.5,12.5,-93]) rotate([90,0,0]) cylinder(h=25, d=680);
}

//color("grey") frame();
//color("grey") wheel();
difference()
{
	hull()
	{
		translate([0,0,-88]) cylinder(h=350, d=36);
		difference()
		{
			translate([130,0,144]) rotate([0,-44,0]) translate([-3.7,0,0]) scale([18/25.5,1,1]) cylinder(h=150, d=25);
			translate([275,0,0]) rotate([0,-44,0]) translate([-3.7,0,0]) scale([18/25.5,1,1]) cylinder(h=375, d=26);
		}
	}
	frame();
	translate([368.5,50,-93]) rotate([90,0,0]) cylinder(h=100, d=690);
}

/*
hull()
{
	translate([0,-17,-80]) cylinder(h=350, d=1);
	translate([220,-11.75,45]) rotate([0,-44,0]) cylinder(h=300, d=1);
}
*/
