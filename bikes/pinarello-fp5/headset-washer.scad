$fn = 50;

headtube_diameter = 29;
shim_height = 5.4;
shim_diameter = 30;
internal_height = 8.4 - shim_height;
internal_diameter = 40.7;
external_height = 3;
external_diameter = 46.7;
stem_diameter = 32;

module smoothed_cylinder(diameter)
{
	difference()
	{
		rotate_extrude()
		{
				square([diameter / 2 - 1, 1]);
				translate([diameter / 2 - 1, 0]) circle(d=2);	
		}
		translate([0,0,-1]) cylinder(d=diameter, h=1);
	}	
}

module headtube() {
  translate([ 0, 0, -15 ]) cylinder(h = 50, d = headtube_diameter);
}

module stem() {
  translate([ 0, 0, shim_height + internal_height + 2 ])
      cylinder(h = 40, d = stem_diameter);
}

module oring_internal() {
  translate([ 0, 0, shim_height + 0.5 + external_height / 2]) rotate_extrude()
      translate([ 14.75, 0, 0 ]) circle(d = 2 + 0.1);
}

module oring_external() {
  translate([ 0, 0, shim_height + external_height / 2 ]) rotate_extrude()
      translate([ 20, 0, 0 ]) circle(d = 2 + 0.1);
}

module raw_headtube_washer() {
  cylinder(h = shim_height, d = shim_diameter);
  translate([ 0, 0, shim_height ])
      cylinder(h = internal_height, d = internal_diameter);
  translate([ 0, 0, shim_height + internal_height ])
      smoothed_cylinder(external_diameter);
}

difference() {
  raw_headtube_washer();
  headtube();
  stem();
  oring_internal();
  oring_external();
  translate([ external_diameter / 2 - 1.5, -2.5, shim_height + external_height -0.01 ])
	scale([ 1.5, 5, 0.5 ])
	  cube(1);
}
  