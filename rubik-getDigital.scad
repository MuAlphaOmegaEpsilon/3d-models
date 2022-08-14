// Units in millimeters

$fn=200;	

module cubic_base()
{
	difference()
	{
		cube(135,center=true);
		// Make empty inside
		translate([0,0,-3])
			cube([129,129,135],center=true);
		// Bevel horizontal edges of the cube
		translate([0,67.5,67.5])
			rotate([45,0,0])
				cube([150,3,3],center=true);
		translate([0,-67.5,67.5])
			rotate([45,0,0])
				cube([150,3,3],center=true);
		translate([67.5,0,67.5])
			rotate([0,45,0])
				cube([3,150,3],center=true);
		translate([-67.5,0,67.5])
			rotate([0,45,0])
				cube([3,150,3],center=true);
		// Bevel vertical edges of the cube
		translate([67.5,67.5,0])
			rotate(45)
				cube([3,3,150],center=true);
		translate([-67.5,-67.5,0])
			rotate(45)
				cube([3,3,150],center=true);
		translate([67.5,-67.5,0])
			rotate(45)
				cube([3,3,150],center=true);
		translate([-67.5,67.5,0])
			rotate(45)
				cube([3,3,150],center=true);
		// Bevel corners of the cube
		translate([67.5,67.5,67.5])
			rotate([0,45,45])
				cube(5.121,center=true);
		translate([-67.5,-67.5,67.5])
			rotate([0,45,45])
				cube(5.121,center=true);
		translate([67.5,-67.5,67.5])
			rotate([45,0,45])
				cube(5.121,center=true);
		translate([-67.5,67.5,67.5])
			rotate([45,0,45])
				cube(5.121,center=true);
	}
}

module plate()
{
	cube([33,40,1], center=true);
	cube([40,33,1], center=true);
	translate([16.5,16.5,0])
		cylinder(h=1,r=3.5,center=true,$fn=200);
	translate([-16.5,-16.5,0])
		cylinder(h=1,r=3.5,center=true,$fn=200);
	translate([16.5,-16.5,0])
		cylinder(h=1,r=3.5,center=true,$fn=200);
	translate([-16.5,16.5,0])
		cylinder(h=1,r=3.5,center=true,$fn=200);
}
module plates()
{
	// Top face plates
	for(i=[-44.5,0,44.5])
		for(j=[-44.5,0,44.5])
			translate([i,j,67.9999])
				plate();
	// Right face plates
	for(i=[-44.5,0,44.5])
		for(j=[-44.5,0,44.5])
			translate([67.9999,i,j])
				rotate([0,90,0])
					plate();
	// Left face plates
	for(i=[-44.5,0,44.5])
		for(j=[-44.5,0,44.5])
			translate([-67.9999,i,j])
				rotate([0,90,0])
					plate();
	// Front face plates
	for(i=[-44.5,0,44.5])
		for(j=[-44.5,0,44.5])
			translate([i,-67.9999,j])
				rotate([90,0,0])
					plate();
	// Back face plates
	for(i=[-44.5,0,44.5])
		for(j=[-44.5,0,44.5])
			translate([i,67.9999,j])
				rotate([90,0,0])
					plate();
}

// The final step, putting things together
difference()
{
	union()
	{
		color("black")
			cubic_base();
		plates();
	}
	// Create slit at the top, rounded edges
	cube([100,4,150], center=true);
	cube([94,10,150], center=true);
	translate([47,2,0])
		cylinder(h=150,r=3,center=true);
	translate([-47,2,0])
		cylinder(h=150,r=3,center=true);
	translate([47,-2,0])
		cylinder(h=150,r=3,center=true);
	translate([-47,-2,0])
		cylinder(h=150,r=3,center=true);
}