$fn=50;

module bearing_636zz()
cylinder(d=22, h=7);
module rod()
translate([0,0,-0.1]) cylinder(d=6, h=100);


module holder_base()
union()
{
	cylinder(d=82, h=10);
	translate([0,0,10]) cylinder(d=71.6, h=10);
	translate([0,0,10]) cylinder(d=40, h=61+20);
}

module base_foot()
union()
{
	cube([20,40,10]);
	translate([10,0,10]) rotate([-90,0,0]) cylinder(d=20,h=40);
	translate([10,0,0]) cylinder(d=20,h=10);
	translate([10,0,10]) sphere(d=20);
}

module back_base()
union()
{
	base_foot();
	translate([130,0,0]) base_foot();
	hull()
	{
		translate([10,40,10]) difference()
		{
			sphere(d=20);
			translate([0,10,0]) cube(20, center=true);
		}
		translate([140,40,10]) difference()
		{
			sphere(d=20);
			translate([0,10,0]) cube(20, center=true);
		}
	}
	hull()
	{
		translate([10,40,10]) difference()
		{
			sphere(d=20);
			translate([0,10,0]) cube(20, center=true);
		}
		translate([75,40,110]) difference()
		{
			sphere(d=20);
			translate([0,10,0]) cube(20, center=true);
		}
	}
	hull()
	{
		translate([75,40,110]) difference()
		{
			sphere(d=20);
			translate([0,10,0]) cube(20, center=true);
		}
		translate([140,40,10]) difference()
		{
			sphere(d=20);
			translate([0,10,0]) cube(20, center=true);
		}
	}
	translate([75,40,110]) rotate([90,0,0]) cylinder(d=6,h=10+7);
}

//holder_base();
back_base();
