$fn=50;

module part_1()
{
	difference()
	{
		union()
		{
			cylinder(d=5,h=7);
			translate([0,0,6.45]) rotate_extrude() translate([2.5,0]) difference()
			{
				square([1,1]);
				translate([1,0]) scale([1,1.075]) circle(r=1);
			}
			translate([0,0,11]) scale([1,1,0.7]) sphere(d=12);
			translate([0,0,14.73]) rotate_extrude() union()
			{
				square([2.25,2]);
				translate([2.25,0]) difference()
				{
					square([1,2]);
					translate([1,1]) scale([1,1.19]) circle(r=1);
				}
			}
			translate([0,0,17.9]) scale([1,1,0.4]) difference()
			{
				sphere(d=8);
				translate([0,0,4]) cube(8, center=true);
			}
			cylinder(d=4, h=19);
		}
		hull()
		{
			translate([0,0,-0.1]) cylinder(d=4);
			translate([0,0,18.1]) cylinder(d=3);
		}
		
	}
}

module part_2()
{
	difference()
	{
		rotate_extrude() union()
		{
			square([0.5,12]);
			translate([0.5,0]) scale([3.68,1]) difference()
			{
				square([3.5,12]);
				translate([3.5,12]) scale([1,5]) circle(r=3.5);
			}
		}
		translate([0,0,-0.1]) cylinder(d=4.25, h=2.2);
	}
	translate([0,0,12]) cylinder(d=0.4, h=0.5);
}

module part_3()
{
	difference()
	{
		cylinder(d=1, h=13);
		cylinder(d=0.6, h=1);
	}
	translate([0,0,13]) sphere(d=1);
}

part_1();
translate([0,0,17.9]) part_2();
translate([0,0,29.9]) part_3();
