$fn=50;

module neck(height)
{
	hull()
	{
		scale([1,50/35,1]) cylinder(h=height, d=35);
		translate([10,20,0]) cylinder(h=height, d=10);
		translate([-10,20,0]) cylinder(h=height, d=10);
		translate([0,27,0]) cylinder(h=height, d=4);
	}
}
module base()
{
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
		
	}
	translate([0,0,2.5]) difference() 
	{
		cylinder(h=1, d=34);
		translate([0,0,-0.01]) cylinder(h=2, d=32);
	}
}

difference()
{
	base();
	translate([0,0,-0.01]) cylinder(h=100, d=29);
}
