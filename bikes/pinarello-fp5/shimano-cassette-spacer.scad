$fn=150;

module hub_teeth()
{
	rotate([0,0,-360/9*0]) translate([16,0,3]) cube([6,7,8], center=true);
	rotate([0,0,-360/9*1]) translate([16,0,3]) cube([6,7,8], center=true);
	rotate([0,0,-360/9*2]) translate([16,0,3]) cube([6,7,8], center=true);
	rotate([0,0,-360/9*3]) translate([16,0,3]) cube([6,7,8], center=true);
	rotate([0,0,-360/9*4]) translate([16,0,3]) cube([6,7,8], center=true);
	rotate([0,0,-360/9*5]) translate([16,0,3]) cube([6,7,8], center=true);
	rotate([0,0,-360/9*6]) translate([16,0,3]) cube([6,7,8], center=true);
	rotate([0,0,-360/9*7]) translate([16,0,3]) cube([6,7,8], center=true);
	rotate([0,0,-360/9*7.87]) translate([17,0,3]) cube([6,4,8], center=true);
}

difference()
{
	union()
	{
		difference()
		{
			cylinder(h=1.1,d=36.7);
			hub_teeth();
		}
		translate([0,0,1.1]) cylinder(h=1,d=36.7);
		translate([0,0,1.3]) cylinder(h=0.8, d=42.5);
	}
	intersection()
	{
		translate([0,0,-0.1]) cylinder(h=3,d=34.85);
		hub_teeth();
	}
	translate([0,0,-0.1]) cylinder(h=3,d=33.5);
}