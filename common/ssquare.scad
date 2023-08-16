// Smoothed square
module ssquare(width=1, height=1, radius=0.1)
{
	translate([radius,0]) square([width-radius*2,height]);
	translate([0,radius]) square([width,height-radius*2]);
	translate([radius,radius]) circle(radius);
	translate([width-radius,radius]) circle(radius);
	translate([radius,height-radius]) circle(radius);
	translate([width-radius,height-radius]) circle(radius);
}
