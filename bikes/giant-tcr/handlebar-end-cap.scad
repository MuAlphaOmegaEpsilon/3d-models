$fn=150;

translate([0,0,10]) difference()
{
	scale([1,1,0.7]) sphere(d=22.5);
	translate([0,0,-15]) cube(30, center=true);
}
intersection()
{
	translate([0,0,5]) union()
	{
		rotate([0,0,  0]) cube([0.8,22.5,10], center=true);
		rotate([0,0, 45]) cube([0.8,22.5,10], center=true);
		rotate([0,0, 90]) cube([0.8,22.5,10], center=true);
		rotate([0,0,135]) cube([0.8,22.5,10], center=true);
	}
	cylinder(d=21, h=10);
}
