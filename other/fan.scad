$fn=150;
EPS=0.004;

module rotor_by_difference()
{
	PIN_DIAMETER=3.3;
	difference()
	{
		union()
		{
			*cylinder(d=PIN_DIAMETER, h=14 + EPS * 2);
			cylinder(d=30.2, h=13);
			intersection()
			{
				for(angle = [0 : 45 : 180])
					rotate([0,0,angle]) cube([40, 10, 26], center=true);
				cylinder(d=31, h=13);
			}
		}
		translate([0,0,11 + EPS]) difference()
		{
			cylinder(d=31 + EPS, h=2);
			translate([0,0,-EPS]) cylinder(d=25, h=3);
		}
		translate([0,0,11.2 + EPS]) difference()
		{
			cylinder(d=10.8, h=1.8);
			*translate([0,0,-1]) cylinder(d=PIN_DIAMETER, h=4);
		}
	}
	*translate([0,0,12.]) cylinder(d=5, h=3.4);
}

module rotor_internal_shrinkage_ring()
{
	difference()
	{
		union()
		{
			cylinder(d=25.2, h=13);
			cylinder(d=28, h=0.2);
		}
		translate([0,0,-0.1]) cylinder(d=24.2, h=15);
	}
}

module blade_0(length, width, thickness, initial_angle, pitch_angle)
{
	translate([0,0,(width+thickness)/2*sin(initial_angle)])
		rotate([90,-initial_angle,90])
			linear_extrude(height=length, twist=pitch_angle)
				square([width,thickness], center=true);
}

module blade_1(length, width, thickness, initial_angle, pitch_angle)
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

module fan_0(blades, pitch_angle)
{
	difference()
	{
		intersection()
		{
			union()
			{
				cylinder(d=33, h=13);
				for(angle = [0 : 360 / blades : 360])
					rotate([0,0,angle]) blade_1(70, 36, 1, 33, pitch_angle);
			}
			cylinder(d=133, h=13);
		}
		translate([0,0,-0.01]) cylinder(d=30.2, h=20);
		//translate([0,0,-0.01]) rotor_by_difference();
	}
}
/*
for(blades = [3 : 9])
	translate([(blades - 3) * 200, 0]) fan_0(blades, 20);
for(blades = [3 : 9])
	translate([(blades - 3) * 200, 200]) fan_0(blades, -22);
*/
//blade_1(70, 36, 1, 33, 22);

*difference()
{
	OFFSET=5;
	cylinder(d=33, h=14-OFFSET);
	translate([0,0,-OFFSET-EPS]) rotor_by_difference();
	translate([0,0,14-1-EPS-EPS-OFFSET]) intersection()
	{
		difference()
		{
			cylinder(d=25, h=3);
			translate([0,0,-EPS]) cylinder(d=10.8, h=4);
		}
		union()
		{
			rotate([0,0,0]) cube([2,40,7], center=true);
			rotate([0,0,45]) cube([2,40,7], center=true);
			rotate([0,0,90]) cube([2,40,7], center=true);
			rotate([0,0,135]) cube([2,40,7], center=true);
			
		}
		
	}
}
*rotor_by_difference();
*rotor_internal_shrinkage_ring();
*fan_0(7, 18);