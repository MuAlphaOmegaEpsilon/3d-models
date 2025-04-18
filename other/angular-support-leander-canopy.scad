$fn=150;

EPS=0.01;

module screw()
{
	translate([0,0,-13]) cylinder(d=3.5, h=16);
	translate([0,0,-13]) hull()
	{
		translate([0,0,13]) cylinder(d=3.5, h=EPS);
		translate([0,0,16]) cylinder(d=6.5, h=15);
	}
}

module arm(diameter, length)
{
	cube([length-(diameter)/2,diameter,10]);
	translate([length-diameter/2,diameter/2,0]) cylinder(d=diameter,h=10.1);
}


module angular_support_front(offset)
{
	difference()
	{
		translate([0,offset/2,0]) hull()
		{
			arm(20-offset,45);
			translate([-4.2,0,0]) rotate([0,90,0]) mirror([1,0,0]) arm(20-offset,30);
		}
		translate([-2,10,0]) rotate([0,-4.5,0]) translate([0,0,-1]) cylinder(d=20.2, h=50);
		rotate([0,90,0]) mirror([1,0,0]) translate([-0.1,10,0]) cylinder(d=20.2, h=60);
		translate([35,10,10]) screw();
		rotate([0,90,0]) mirror([1,0,0]) translate([25,10,6.2]) screw();
	}
}

module angular_support_rear(offset)
{
	difference()
	{
		translate([0,offset/2,0]) hull()
		{
			arm(20-offset,45);
			rotate([0,90,0]) mirror([1,0,0]) arm(20-offset,30);
			translate([0,(20-offset)/2,25]) sphere(d=20);
		}
		translate([-2,10,0]) rotate([0,4.5,0]) cylinder(d=20.2, h=25);
		rotate([0,90,0]) mirror([1,0,0]) translate([-0.1,10,0]) cylinder(d=20.2, h=60);
		translate([29,10,10]) screw();
		translate([0,10,31.3]) rotate([0,4.5,0]) translate([0,0,-6.2]) screw();
	}	
}

angular_support_front(5);
//angular_support_rear(5);

// Construction line
/*
color("brown") translate([-5.9,10,-50]) rotate([0,4.5,0]) cylinder(d=20.2, h=75);
color("brown") translate([0,10,0]) rotate([0,90,0]) cylinder(d=20.2, h=75);
mirror([0,0,1]) angular_support_front(5);
angular_support_rear(5);
*/