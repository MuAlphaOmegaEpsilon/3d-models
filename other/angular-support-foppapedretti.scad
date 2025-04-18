$fn=150;

EPS=0.01;

module screw_head()
{
	hull()
	{
		 translate([0,0,-EPS])cylinder(d=3, h=EPS);
		 translate([0,0,3+2*EPS]) cylinder(d=6, h=EPS);
	}
}

module arm(length)
{
	difference()
	{
		union()
		{
			cube([length,10,3]);
			translate([length,5,0]) cylinder(d=10, h=3);
		}
		translate([length-1,5,0]) screw_head();
	}
}

module angular_support(height)
{
	arm(25);
	rotate([0,90,0]) mirror([1,0,0]) arm(height);
}

module wheels_support()
{
	difference()
	{
		hull()
		{
			union()
			{
				cube([4.2,48,34.4-6]);
				translate([0,6,0]) cube([4.2,48-12,34.4]);
				translate([0,6,34.4-6]) rotate([0,90,0]) cylinder(r=6, h=4.2);
				translate([0,48-6,34.4-6]) rotate([0,90,0]) cylinder(r=6, h=4.2);
			}
			union()
			{
				cube([30-6,48,4.2]);
				translate([0,6,0]) cube([30,48-12,4.2]);
				translate([30-6,6,0]) cylinder(r=6, h=4.2);
				translate([30-6,48-6,0]) cylinder(r=6, h=4.2);
			}
		}
		translate([0,6+5/2,34.4-6-5/2]) union()
		{
			translate([-0.1,0,0]) rotate([0,90,0]) cylinder(d=5, h=5);
			translate([-0.1,31.5,0]) rotate([0,90,0]) cylinder(d=5, h=5);
			translate([4.2,0,0]) rotate([0,90,0]) cylinder(d=8.8, h=20);
			translate([4.2,31.5,0]) rotate([0,90,0]) cylinder(d=8.8, h=20);
		}
		translate([22,5/2+(48-15)/2,-0.1]) union()
		{
			hull()
			{
				cylinder(d=5, h=4.2);
				translate([0,10,0]) cylinder(d=5, h=4.2);
			}
			hull()
			{
				translate([0,0,4.19]) cylinder(d=7.15, h=30);
				translate([0,10,4.19]) cylinder(d=7.15, h=30);		
			}
		}
	}
}

translate([5.1,0,0]) angular_support(20);
mirror([1,0,0]) translate([5.1,0,0]) angular_support(30);

translate([0,30,0]) wheels_support();



