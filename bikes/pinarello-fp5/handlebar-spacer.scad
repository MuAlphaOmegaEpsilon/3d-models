//$fn=150;

module fork(height) { translate([0, 0, -0.01]) cylinder(h=height + 0.01, d=28.8); }
module stem(height)
translate([0,0,3]) hull()
{
	translate([-19.601,0,0]) scale([0.6,1,1]) cylinder(h=height, d=32);
	translate([-20,-37/2,0]) cube([50,37,height]);

}
module neck(height) {
	hull()
	{
		translate([18.5,0,0]) scale([1,1.3,1]) cylinder(h=height, d=10);
		cylinder(h=height, d=35);
		translate([-19.6,0,0]) scale([0.6,1,1]) cylinder(h=height, d=32);
	}
}

union()
{	difference()
	{	hull()
		{	cylinder(h=0.01, d=47);
			difference()
			{	cylinder(h=3, d=47);
				translate([-11.2,0,25]) cube(50, center=true);
			}
			difference()
			{	neck(18.5);
				translate([0,0,10+7.5]) rotate([0,17,0]) translate([-6,0,0]) cube([48,48,20], center=true);
				translate([38.8,0,25]) cube(50, center=true);
			}
		}
		fork(100);
		stem(15);
	}
	
}

//rotate([0,-17,0]) color("black") fork();
//rotate([0,-17,0]) color("darkgrey") stem();

