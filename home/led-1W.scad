$fn=50;


color("silver") cylinder(d=6,h=0.24);

color("white")
translate([0,0,0.24])
difference()
{
	intersection()
	{
		cylinder(d=8,h=2.32);
		cube([8,7.3,6], center=true);
	}
	translate([4,0,0]) scale([1.9,1,1]) cylinder(d=1, h=0.1);
	translate([-4,0,0]) scale([1.9,1,1]) cylinder(d=1, h=0.1);
}

color([1,1,1,0.1])
translate([0,0,2.45])
intersection()
{
	sphere(d=5.3);
	translate([0,0,3]) cube(6, center=true);
}

color("silver") union()
{
	translate([0,4,1.6]) cube([3,1,0.2], center=true);
	translate([-1,4.6,0.8]) cube([1,0.2,1.4], center=true);
	translate([-1,4.5,1.5]) rotate([90,0,90]) translate([0,0,-0.5]) intersection()
	{
		cylinder(r=0.2, h=1);
		cube(2);
	}
}

color("silver") translate([0,-4,1.6]) cube([3,1,0.2], center=true);