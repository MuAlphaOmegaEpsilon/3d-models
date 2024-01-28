// Units in millimeters

$fn=500;

seattube_angle=16.85; // Must absolutely be > 16.5°
seattube_height = 100;
seattube_diameter = 30.95;
seattube_radius = seattube_diameter / 2;
constriction_diameter = 35.00;
constriction_height = 12;
frametube_diameter = 36.65;
clip_width = 2.5;
clip_height = 22.5;
clip_depth = 2;
rail_width = 7;
rail_height = 9;
rail_length = 37;
rails_distance = 37;

module frametube()
{
	difference()
	{
		union()
		{
			// Frame
			translate([0, 0, -constriction_height / 2])	cylinder(d = frametube_diameter, h = seattube_height - constriction_height, center = true);
			// Constriction
			translate([0, 0, (seattube_height - constriction_height) / 2]) cylinder(d = constriction_diameter, h = constriction_height, center = true);
		}		
		cylinder(d = 30.50, h = seattube_height + 0.1, center = true);
		translate([0, 16.5, (100 - 23) / 2 + 0.01])	cube([clip_width, 4, 23], center = true);
		translate([0, 16.5, 27]) rotate([90,0,0])   cylinder(d = clip_width, h = 4, center = true);
	}
}

rotate_extrude() 
{
	translate([30.50 / 2,0,0])
	{
		square([(frametube_diameter - seattube_diameter) / 2, 40]);
		translate([0,40,-2]) square([(constriction_diameter - seattube_diameter) / 2, constriction_height]);
	}
	
}

module saddle_rails()
{
	translate([(rails_distance + rail_width) / 2, 0, 0])
		hull()
		{
			translate([0, 0, (rail_height - rail_width) / 2])
				rotate([90,0,0])
					cylinder(d = rail_width, h = rail_length * 2, center = true);
			translate([0, 0, -(rail_height - rail_width) / 2])
				rotate([90,0,0])
					cylinder(d = rail_width, h = rail_length * 2, center = true);
		}
	translate([-(rails_distance + rail_width) / 2, 0, 0])
		hull()
		{
			translate([0, 0, (rail_height - rail_width) / 2])
				rotate([90,0,0])
					cylinder(d = rail_width, h = rail_length * 2, center = true);
			translate([0, 0, -(rail_height - rail_width) / 2])
				rotate([90,0,0])
					cylinder(d = rail_width, h = rail_length * 2, center = true);
		}
}

//rotate([-seattube_angle, 0, 0]) 
//color("black") frametube();




rails_vertical_offset = 56.3;
// translate([0, 40, rails_vertical_offset]) color("grey") saddle_rails();
