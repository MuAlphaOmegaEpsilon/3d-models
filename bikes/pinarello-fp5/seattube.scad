// Units in millimeters

$fn=50;

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
screw_diameter = 5;
screw_head_thickness = 2.5;
washer_diameter = 8;
washer_thickness = 1.2;
nut_thickness = 3.15;
nut_side = 6.9;

module hexagon(cube_side, h)
{
	hull()
	{
		cube([cube_side, cube_side / (cos(30) * 2), h], center = true);
		rotate([0, 0, 120])	cube([cube_side, cube_side / (cos(30) * 2), h], center = true);
		rotate([0, 0, 240])	cube([cube_side, cube_side / (cos(30) * 2), h], center = true);
	}
	
}

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

module seattube()
{
    // Cylindrical main tube
	hull()
	{
		cylinder(h = seattube_height, r = seattube_radius, center = true);
		translate([0, 0, -51])
			cylinder(h = 2, r = seattube_radius * 0.9, center = true);
	}
	difference()
	{
		translate([0, 0, 52])
			cylinder(h = 4, d = constriction_diameter, center = true);
		translate([0, -10, 83.3])
			rotate([seattube_angle, 0, 0])
				cube(60, center = true);		
	}
	// Posterior tube clip
	hull()
	{
		translate([0, 15.9, 50.0]) rotate([ 0, 90, 0]) cylinder(r = clip_height, h = clip_width, center = true);
		translate([0, 16.5, 27.5]) rotate([90,  0, 0]) cylinder(d = clip_width,  h = 10,         center = true);
	}
	
	intersection()
	{
		union()
		{
			translate([0, 0, 44])                           cylinder(d = constriction_diameter - 0.01, h = constriction_height + 0.1, center = true);
			translate([0, 0, 26 - constriction_height / 2]) cylinder(d = frametube_diameter - 0.01, h = 24 - constriction_height - 0.01, center = true);
		}
		union()
		{
			translate([0, 16.5, (100 - 22.5) / 2 + 0.01])
				cube([clip_width, 4, 22.5 + 0.01], center = true);
			#translate([0, 16.5, 27.5])
				rotate([90,0,0])
					cylinder(d = clip_width, h = 4, center = true);
		}
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

holes_horizontal_offset = 13;
module screws()
{
	translate([holes_horizontal_offset, 0, 0])
		cylinder(d = screw_diameter, h = 19, center = true);
	translate([-holes_horizontal_offset, 0, 0])
		cylinder(d = screw_diameter, h = 19, center = true);
}
//translate([0, 37, 53.5])
//	color("grey") screws();

//rotate([-seattube_angle, 0, 0])
//	color("black") frametube();

rails_vertical_offset = 56.3;


rotate([-seattube_angle, 0, 0])
	seattube();

// Lower saddle support
/*
difference ()
{
	union()
	{
		hull()
		{
			rotate([-seattube_angle / 2, 0, 0])
				translate([0, 7.875, 50])
					difference()
					{
						scale([1, 1, 0.4])
							sphere(d = seattube_diameter);
						translate([0, 0, -seattube_diameter / 2 + 2])
							cube(seattube_diameter, center = true);
					}
			translate([0, 37.5, 50.25])
				scale([1, 1, 0.2])
					sphere(d = 60);
		}
		
		
		// Middle fin
		translate([0, 44, 47.15])
			rotate([90, 0, 0])
				cylinder(d = 10, h = 24, center = true);
		translate([0, 56, 47.15])
			scale([1, 1.5, 1])
				sphere(d = 10);
		
	}
	// Trace rails volume
	translate([0, 40, rails_vertical_offset])
		saddle_rails();
	// Trace screw holes
	translate([holes_horizontal_offset, 37, 50.5])
		cylinder(d = screw_diameter, h = 13, center = true);
	translate([-holes_horizontal_offset, 37, 50.5])
		cylinder(d = screw_diameter, h = 13, center = true);
	// Trace washer holes
	translate([holes_horizontal_offset, 37, 46.9])
		cylinder(d = washer_diameter, h = washer_thickness + screw_head_thickness + 1.1, center = true);
	translate([-holes_horizontal_offset, 37, 46.9])
		cylinder(d = washer_diameter, h = washer_thickness + screw_head_thickness + 1.1, center = true);
}
*/

// Upper saddle support
/*
difference()
{
	translate([0, 37.5, 60]) 
	{
		hull()
		{
			translate([-(rails_distance + rail_width) / 2, 0, 0])
			{
				scale([1.3, 1, 0.7])
					rotate([90,0,0])
						cylinder(d = rail_length / 5 , h = rail_length / 3, center = true);
				translate([0, rail_length / 6, 0])
					scale([1.3, 3, 0.7])
						sphere(d = rail_length / 5);
				translate([0, -rail_length / 6, 0])
					scale([1.3, 3, 0.7])
						sphere(d = rail_length / 5);
			}
			translate([(rails_distance + rail_width) / 2, 0, 0])
			{
				scale([1.3, 1, 0.7])
					rotate([90,0,0])
						cylinder(d = rail_length / 5 , h = rail_length / 3, center = true);
				translate([0, rail_length / 6, 0])
					scale([1.3, 3, 0.7])
						sphere(d = rail_length / 5);
				translate([0, -rail_length / 6, 0])
					scale([1.3, 3, 0.7])
						sphere(d = rail_length / 5);
			}
		}
		// Screw aero covers
		translate([holes_horizontal_offset, 0, -5 + 0.01])
			scale([1, 3, 1])
				cylinder(d = screw_diameter * 1.2, h = 3);
		translate([-holes_horizontal_offset, 0, -5 + 0.01])
			scale([1, 3, 1])
				cylinder(d = screw_diameter * 1.2, h = 3);
	}
	// Trace rails volume
	translate([0, 40, rails_vertical_offset])
		saddle_rails();
	
	// Trace screw holes
	translate([holes_horizontal_offset, 37, 60])
		cylinder(d = screw_diameter, h = 10, center = true);
	translate([-holes_horizontal_offset, 37, 60])
		cylinder(d = screw_diameter, h = 10, center = true);
	// Trace nut holes
	translate([holes_horizontal_offset, 37, 61.1])
		hexagon(cube_side = nut_side, h = nut_thickness);
	translate([-holes_horizontal_offset, 37, 61.1])
		hexagon(cube_side = nut_side, h = nut_thickness);
	// Shape screw aero covers rounded base
	translate([0, 37.5, 50.5])
		scale([1, 1, 0.2])
			sphere(d = 60); 
}
*/
//translate([0, 40, rails_vertical_offset])
//	color("grey") saddle_rails();
