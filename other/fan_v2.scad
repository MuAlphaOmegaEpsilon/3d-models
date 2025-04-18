$fn=150;

EPS=0.004;

module rotor_body()
{
	difference()
	{
		union()
		{
			cylinder(d=35, h=13);
			*translate([0,0,13]) scale([1,1,2]) difference()
			{
				sphere(d=33);
				translate([0,0,-16.5]) cube(33, center=true);
			}
		}
		translate([0,0,-EPS]) cylinder(d=32.2, h=13+2*EPS);		
		for(angle = [0 : 360 / 12 : 360])
			rotate([0,0,angle+360/24]) translate([32.2/2,0,13]) cube([5,2,13], center=true);
	}
	for(angle = [0 : 360 / 12 : 360])
		difference()
		{
			rotate([0,0,angle]) translate([32.2/2,0,13/2]) cube([2.5,1.5,13], center=true);
			translate([0,0,-EPS]) cylinder(d=30.2, h=14);
		}
}

module blade_0(length, width, thickness, initial_angle, pitch_angle)
{
	translate([0,0,(width+thickness)/2*sin(initial_angle)])
		rotate([90,-initial_angle,90])
			linear_extrude(height=length, twist=pitch_angle)
				scale([3,1]) translate([0,-width]) difference()
				{
					circle(width);
					translate([0,-width-thickness]) circle(width*2);
				}
}

rotor_body();
*blade_0(200, 5, 10, 0, 0);

