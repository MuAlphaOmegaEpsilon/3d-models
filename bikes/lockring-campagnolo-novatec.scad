$fn=300;

use <../common/thread.scad>

module hexagonal_cut()
{
	translate([0,10,-0.1]) cylinder(h=18, d=4.3, $fn=6);
	translate([0,-10,-0.1]) cylinder(h=18, d=4.3, $fn=6);
}

difference()
{
	union()
	{
		cylinder(h=2.5, d=37.6);
		translate([0,0,2.5]) cylinder(h=1.0, d=35);
		translate([0,0,3.5]) cylinder(h=4.5, d=26.3);
		translate([0,0,8]) thread_h(id=25.9,od=26.3, pitch=0.7, h=8.5, $fn=max(30, $fn/3));
		translate([0,0,16.5]) scale([1,1,0.15]) sphere(d=25.9);
	}
	translate([0,0,-0.01])cylinder(h=18, d=21.75);
	translate([0,0,4])cylinder(h=18, d=22.8);
	hexagonal_cut();
	rotate([0,0,30]) hexagonal_cut();
	rotate([0,0,60]) hexagonal_cut();
	rotate([0,0,90]) hexagonal_cut();
	rotate([0,0,120]) hexagonal_cut();
	rotate([0,0,150]) hexagonal_cut();
}

