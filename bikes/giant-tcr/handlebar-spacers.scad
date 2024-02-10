$fn=50;

module neck_original(height)
{
	hull()
	{
		scale([1,50/35,1]) cylinder(h=height, d=35);
		translate([10,20,0]) cylinder(h=height, d=10);
		translate([-10,20,0]) cylinder(h=height, d=10);
		translate([0,27,0]) cylinder(h=height, d=4);
	}
}

/*
difference()
{
	union()
	{
		neck(4+15);
		cylinder(h=3.5, d=47);
		translate([0,0,3.5]) scale([1,1,0.2]) difference()
		{
			sphere(d=47);
			translate([0,0,-47/2]) cube(47, center=true);
		}
	}
	translate([0,0,-0.01]) cylinder(h=3.5, d=45);
	translate([0,0,-0.01]) cylinder(h=100, d=29);
}
translate([0,0,2.5]) difference()
{
	cylinder(h=1, d=34);
	translate([0,0,-0.01]) cylinder(h=2, d=32);
}
*/

//color("black") translate([0,0,19]) rotate([0,0,90]) neck(0.1);


module neck_new(height) {
	hull()
	{
		cylinder(h=height, d=35);
		translate([18.5,0,0]) scale([1,1.3,1]) cylinder(h=height, d=10);
		translate([-17.7,0,0]) scale([0.62,1,1]) cylinder(h=height, d=33.5);
	}
}

// Construction figure
*#translate([-3.1,0,19.21]) cylinder(h=0.1, d=50);

difference()
{
	union()
	{

		hull() {
			cylinder(h=3.5, d=47);
			difference() {
				translate([0,0,3.5]) neck_new(15);
				translate([0,0,10.7]) rotate([0,17,0]) cylinder(h=20, d=70);
			}
		}
		translate([0,0,3.5]) neck_new(15.7);
	}
	translate([0,0,-0.01]) cylinder(h=2.5, d=45);
	translate([0,0,-0.01]) cylinder(h=100, d=28.56);
	translate([0,0,19]) scale([0.99,0.99,1]) neck_new(0.5);
}
translate([0,0,1.7]) difference()
{
	cylinder(h=0.8, d=32);
	translate([0,0,-0.01]) cylinder(h=2, d=28.56);
}
translate([0,0,19]) difference() {
	intersection() {
		neck_new(40);
		translate([-32,-1.2,0]) cube([11.5,2.4,40]);
  }
}

// Support
*!cylinder(h=1.4, d=40);
