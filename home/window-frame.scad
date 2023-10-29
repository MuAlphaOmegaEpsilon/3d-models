$fn=50;

module wall()
{
	color("white") difference()
	{
		cube([160, 60, 60]);
		translate([20, -0.1, 5]) cube([120, 15.1, 50]);
		translate([30, -5, 10]) cube([100, 70, 40]);
	}
}

module polystyrene()
{
	color("pink") difference()
	{
		cube([110, 3, 45]);
		translate([3, -1, 2.5]) cube([104, 5, 40]);
	}
}

module glass()
{
	color("skyblue",0.25) cube([110, 1, 45]);
}

module wood_frame()
{
	union()
	{
		color("SaddleBrown") translate([0, 4.01, 0]) difference()
		{
			cube([116, 2, 48]);
			translate([6, -1, 4]) cube([104, 5, 40]);
		}
		color("Sienna")difference()
		{
			cube([116, 4, 48]);
			translate([3, -1, 1.5]) cube([110.01, 5.01, 45]);
		}
	}
	
}

module soft_padding()
{
	color("Gainsboro") difference()
	{
		cube([110, 0.1, 45]);
		translate([3, -1, 2.5]) cube([104, 5, 40]);
	}
}

module screw()
{
	color("DimGray") rotate([-90, 0, 0]) union()
	{
		hull()
		{
			cylinder(d=1.2, h=0.1);
			translate([0,0,0.6]) cylinder(d=0.6, h=0.1);
		}
		cylinder(d=0.6, h=5);
	}	
}

translate([140, 15, -5]) rotate([0,0,180]) wall();
translate([5, 0, 2.5]) polystyrene();
translate([5, 3, 2.5]) glass();
translate([2, 0.12, 1]) wood_frame();
translate([5, 4.01, 2.5]) soft_padding();
translate([6.75, -0.01, 3.75]) screw();
translate([113.25, -0.01, 3.75]) screw();
translate([6.75, -0.01, 45.75]) screw();
translate([113.25, -0.01, 45.75]) screw();
