use </home/maze/prj/3d-models/common/scube.scad>

$fn=150;
EPS=0.01;

// Measured values
WOOD_DEPTH=18.6+0.6;
WOOD_HEIGHT=26.6+0.6;
WOOD_HOLE_LENGTH=57.7-0.6;
ROD_DIAMETER=20.2;

// Model values
THICKNESS=5;
BACK_LENGTHENING=5;
ROD_HUG_LENGTH=2.5;

module front_block()
{
	difference()
	{
		translate([-THICKNESS,-ROD_DIAMETER-THICKNESS,-BACK_LENGTHENING-THICKNESS]) scube(WOOD_HOLE_LENGTH+THICKNESS*2,WOOD_DEPTH+ROD_DIAMETER+THICKNESS*2,WOOD_HEIGHT+BACK_LENGTHENING+THICKNESS*3,THICKNESS);
		// Side halving
		translate([0,-100-ROD_DIAMETER/2+0.2,0]) cube(200, center=true);
		// Bed frame
		translate([0, -WOOD_DEPTH,0]) scale([1,2,1])
		{
			translate([-WOOD_HEIGHT,0,WOOD_HEIGHT-100]) cube([WOOD_HEIGHT,WOOD_DEPTH,100]);
			translate([-EPS,0,0]) cube([WOOD_HOLE_LENGTH+EPS*2,WOOD_DEPTH,WOOD_HEIGHT]);
			translate([WOOD_HOLE_LENGTH,0,WOOD_HEIGHT-100]) cube([WOOD_HEIGHT,WOOD_DEPTH,100]);
		}
		// Rod
		translate([WOOD_HOLE_LENGTH / 2,-ROD_DIAMETER/2,-BACK_LENGTHENING-THICKNESS/2]) cylinder(d=ROD_DIAMETER,h=100);
		// Screws
		translate([WOOD_HOLE_LENGTH*0.15,-ROD_DIAMETER-THICKNESS-EPS,WOOD_HEIGHT+8.15/2]) screw();
		translate([WOOD_HOLE_LENGTH*0.85,-ROD_DIAMETER-THICKNESS-EPS,WOOD_HEIGHT+8.15/2]) screw();
		translate([WOOD_HOLE_LENGTH*0.15,-ROD_DIAMETER-THICKNESS-EPS,-8.15/2]) screw();
		translate([WOOD_HOLE_LENGTH*0.85,-ROD_DIAMETER-THICKNESS-EPS,-8.15/2]) screw();
		// Nuts
		translate([WOOD_HOLE_LENGTH*0.15,-ROD_DIAMETER/2+10,WOOD_HEIGHT+8.15/2]) nut();
		translate([WOOD_HOLE_LENGTH*0.85,-ROD_DIAMETER/2+10,WOOD_HEIGHT+8.15/2]) nut();
		translate([WOOD_HOLE_LENGTH*0.15,-ROD_DIAMETER/2+10,-8.15/2]) mirror([0,0,1]) nut();
		translate([WOOD_HOLE_LENGTH*0.85,-ROD_DIAMETER/2+10,-8.15/2]) mirror([0,0,1]) nut();
	}
}

module rear_block()
{
	difference()
	{
		translate([-THICKNESS,-ROD_DIAMETER-THICKNESS,-BACK_LENGTHENING-THICKNESS]) scube(WOOD_HOLE_LENGTH+THICKNESS*2,WOOD_DEPTH+ROD_DIAMETER+THICKNESS*2,WOOD_HEIGHT+BACK_LENGTHENING+THICKNESS*3,THICKNESS);
		
		// Side halving
		translate([-20,-0.5,-50]) cube(200);
		translate([-0.5,-ROD_DIAMETER/2-0.5,-THICKNESS*2-1]) cube([WOOD_HOLE_LENGTH+1,50,THICKNESS*2+2]);
		translate([0,100-ROD_DIAMETER/2-0.2,WOOD_HEIGHT+THICKNESS]) cube([200,200,THICKNESS*2+1], center=true);
		translate([WOOD_HOLE_LENGTH/2,100-ROD_DIAMETER/2-0.2,WOOD_HEIGHT/2]) cube([ROD_DIAMETER+2,200,WOOD_HEIGHT], center=true);
		// Bed frame
		scale([1,2,1])
		{
			translate([-WOOD_HEIGHT,0,WOOD_HEIGHT-100]) cube([WOOD_HEIGHT,WOOD_DEPTH,100]);
			translate([-EPS,0,0]) cube([WOOD_HOLE_LENGTH+EPS*2,WOOD_DEPTH,WOOD_HEIGHT]);
			translate([WOOD_HOLE_LENGTH,0,WOOD_HEIGHT-100]) cube([WOOD_HEIGHT,WOOD_DEPTH,100]);
		}
		// Rod
		translate([WOOD_HOLE_LENGTH / 2,-ROD_DIAMETER/2,-BACK_LENGTHENING-THICKNESS/2]) cylinder(d=ROD_DIAMETER,h=100);
		// Screws
		translate([WOOD_HOLE_LENGTH*0.15,-ROD_DIAMETER-THICKNESS-EPS,WOOD_HEIGHT+8.15/2]) screw();
		translate([WOOD_HOLE_LENGTH*0.85,-ROD_DIAMETER-THICKNESS-EPS,WOOD_HEIGHT+8.15/2]) screw();
		translate([WOOD_HOLE_LENGTH*0.15,-ROD_DIAMETER-THICKNESS-EPS,-8.15/2]) screw();
		translate([WOOD_HOLE_LENGTH*0.85,-ROD_DIAMETER-THICKNESS-EPS,-8.15/2]) screw();
	}
}

module nut()
{
	rotate([-90,0,0]) translate([0,0,-3.6/2]) union()
	{
		cylinder(d=8.15, h=3.6, $fn=6);
		translate([-8.15/2,0,0]) cube([8.15,8.15/2+EPS,3.6]);
	}
}

module screw()
{
	rotate([-90,0,0])
	{
		cylinder(d=7.6, h=4.5);
		cylinder(d=4.3, h=30.2);
	}
}

//front_block();
rear_block();

/*
color("yellow") translate([-WOOD_HEIGHT,0,WOOD_HEIGHT-100]) cube([WOOD_HEIGHT,WOOD_DEPTH,100]);
color("yellow") translate([-EPS,0,0]) cube([WOOD_HOLE_LENGTH+EPS*2,WOOD_DEPTH,WOOD_HEIGHT]);
color("yellow") translate([WOOD_HOLE_LENGTH,0,WOOD_HEIGHT-100]) cube([WOOD_HEIGHT,WOOD_DEPTH,100]);
color("brown") translate([WOOD_HOLE_LENGTH / 2,-ROD_DIAMETER/2,-BACK_LENGTHENING-THICKNESS/2]) cylinder(d=ROD_DIAMETER,h=100);
*/
