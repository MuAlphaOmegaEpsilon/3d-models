$fn = 200; // Print quality

module wall()
{
	translate([-92.5, -30 ,-80]) cube([85, 150, 160]);
	translate([-92.5, -165 ,-80]) cube([100, 165, 160]);
}
//color("white") wall();

module chimney_handle()
{
	diameter = 12;
	length = 110;
	wall_margin = 5;
	angle = 38;
	translate([-2.5, diameter / 2 + wall_margin, 0]) sphere(d = diameter);
	translate([2.5, 54.53, 34.3]) rotate([90 + angle, 0, -6.5]) cylinder(d = diameter, h = length, center = true);
}
// color([0.37, 0.17, 0.17]) chimney_handle();
// color("blue") translate([-4.2, 4.2 + 80, 60]) cube(8.4, center = true);


module support_1()
{
	upper_support_length = 81;
	width = 28;
	depth = 4;
	difference()
	{
		union()
		{
			translate([6.5, upper_support_length / 2, 60]) cube([width, upper_support_length, depth], center = true);
			translate([6.5, depth / 2, 2]) cube([width, depth, 118], center = true);
			translate([6.5 + 1, -15 + 0.05, 0.425]) cube([width - 2, 30, 123.15], center = true);
			intersection()
			{
				translate ([6.5, -50, 60]) rotate([0, 90, 0])
					difference()
					{
						cylinder(d = 262.2, h = width, center = true);
						cylinder(d = 262.2 - depth * 3, h = width + 0.1, center = true);
					}
				translate([-10, 0, -78]) cube([100, 100, 140]);
			}
		}
		wall();
		hull()
		{
			chimney_handle();
			translate([-20, 0, 0]) chimney_handle();
		}
	}
	
}
//color("black") support_1();

module support_2()
{
	difference()
	{
		translate([-5, -82, 0]) cube([70, 185, 150], center = true);
		wall();
		translate([-0.01, -0.01, 0]) support_1();
	}
	
}
!color("green") support_2();