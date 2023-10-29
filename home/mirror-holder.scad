$fn=100;

use </home/maze/prj/3d-models/common/scube.scad>
use </home/maze/prj/3d-models/common/ssquare.scad>

module screw()
{
	hull()
	{
		cylinder(d=8.1, h=0.5);
		translate([0,0,5]) cylinder(d=3, h=0.1);
	}
	cylinder(d=3.8, h=25);
}

difference()
{
	union()
	{
		scube(width=15, depth=15, height=8, radius=1);
		translate([0,0,7]) linear_extrude(1) ssquare(width=15,height=15, radius=1);
	}
	translate([7.5,7.5,3.01]) linear_extrude(5) ssquare(width=10, height=10, radius=2);
	translate([6,6,-0.01]) screw();
	translate([11,11,-0.1]) linear_extrude(10) ssquare(width=10, height=10, radius=2);
}
