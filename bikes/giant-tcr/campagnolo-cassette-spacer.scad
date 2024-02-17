$fn=200;

module hub_teeth()
{
	intersection()
	{
		union()
		{
			rotate([0,0,-360/8*0]) translate([16,0,0.9]) cube([7,4,1.8], center=true);
			rotate([0,0,-360/8*1]) translate([16,0,0.9]) cube([7,4,1.8], center=true);
			rotate([0,0,-360/8*2]) translate([16,0,0.9]) cube([7,4,1.8], center=true);
			rotate([0,0,-360/8*3]) translate([16,0,0.9]) cube([7,4,1.8], center=true);
			rotate([0,0,-360/8*4]) translate([16,0,0.9]) cube([7,4,1.8], center=true);
			rotate([0,0,-360/8*5]) translate([16,0,0.9]) cube([7,4,1.8], center=true);
			rotate([0,0,-360/8*6]) translate([16,0,0.9]) cube([7,4,1.8], center=true);
			rotate([0,0,-360/8*7]) translate([16,0,0.9]) cube([7,4,1.8], center=true);
		}
		difference()
		{
			cylinder(h=2,d=37.7);
			translate([0,0,-0.1]) cylinder(h=3,d=29.7);
		}
	}
	
}


difference()
{
	cylinder(h=0.8,d=37.7);
	translate([0,0,-0.1]) cylinder(h=2,d=35.4);
}
hub_teeth();	
	