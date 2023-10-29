// Smoothed cube
module scube(width=1, depth=1, height=1, radius=0.1)
{
	translate([0,radius,radius]) cube([width,depth-radius*2,height-radius*2]);
	translate([radius,0,radius]) cube([width-radius*2,depth,height-radius*2]);
	translate([radius,radius,0]) cube([width-radius*2,depth-radius*2,height]);

	translate([radius,radius,radius]) sphere(r=radius);
	translate([radius,radius,height-radius]) sphere(r=radius);
	translate([radius,radius,radius]) cylinder(h=height-radius*2,r=radius);

	translate([radius,depth-radius,radius]) sphere(r=radius);
	translate([radius,depth-radius,height-radius]) sphere(r=radius);
	translate([radius,depth-radius,radius]) cylinder(h=height-radius*2,r=radius);

	translate([width-radius,radius,radius]) sphere(r=radius);
	translate([width-radius,radius,height-radius]) sphere(r=radius);
	translate([width-radius,radius,radius]) cylinder(h=height-radius*2,r=radius);

	translate([width-radius,depth-radius,radius]) sphere(r=radius);
	translate([width-radius,depth-radius,height-radius]) sphere(r=radius);
	translate([width-radius,depth-radius,radius]) cylinder(h=height-radius*2,r=radius);

	translate([radius,radius,radius]) rotate([-90,0,0]) cylinder(h=depth-radius*2,r=radius);
	translate([radius,radius,height-radius]) rotate([-90,0,0]) cylinder(h=depth-radius*2,r=radius);

	translate([width-radius,radius,radius]) rotate([-90,0,0]) cylinder(h=depth-radius*2,r=radius);
	translate([width-radius,radius,height-radius]) rotate([-90,0,0]) cylinder(h=depth-radius*2,r=radius);

	translate([radius,radius,radius]) rotate([0,90,0]) cylinder(h=width-radius*2,r=radius);
	translate([radius,radius,height-radius]) rotate([0,90,0]) cylinder(h=width-radius*2,r=radius);

	translate([radius,depth-radius,radius]) rotate([0,90,0]) cylinder(h=width-radius*2,r=radius);
	translate([radius,depth-radius,height-radius]) rotate([0,90,0]) cylinder(h=width-radius*2,r=radius);
}
