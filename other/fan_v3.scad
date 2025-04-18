$fn=150;

EPS=0.01;

// A washer to put inside the motor to screw that to a fixture
module screw_washer()
{
	difference()
	{
		union()
		{
			cylinder(d=11.2, h=1);
			translate([0,0,1]) cylinder(d=9.8, h=13.8);
			intersection()
			{
				translate([0,0,1]) cylinder(d=11.2, h=13.8);
				union()
				{
					cube([1.2,16,30], center=true);
					rotate([0,0,90]) cube([1.2,16,30], center=true);
				}
			}
		}
		translate([0,0,-EPS]) cylinder(d=5.2, h=14.8+2*EPS);
	}
}

// A block used to remove the motor stuck inside the fan body
module removal_block()
{
	cylinder(d=25.9, h=13);
}

module stator_front_shrinkage_ring()
{
	difference()
	{
		union()
		{
			cylinder(d=12.4, h=1);
			cylinder(d=11.2, h=4);
		}
		translate([0,0,-EPS]) cylinder(d=10, h=10);
	}
}

module stator_rear_shrinkage_ring()
{
	difference()
	{
		union()
		{
			cylinder(d=13, h=1);
			cylinder(d=11.2, h=5);
		}
		translate([0,0,-EPS]) cylinder(d=10, h=10);
	}
}

module rotor_body()
{
	difference()
	{
		cylinder(d=35.2, h=13);
		translate([0,0,-EPS]) cylinder(d=31.2, h=13+2*EPS);
	}
	for(angle = [0 : 360 / 12 : 360])
		difference()
		{
			rotate([0,0,angle]) translate([32.2/2,0,13/2]) cube([2.5,1.5,13], center=true);
			translate([0,0,-EPS]) cylinder(d=30.3, h=13+2*EPS);
		}
	translate([0,0,13]) difference()
	{
		cylinder(d=35.2, h=1);
		translate([0,0,-EPS]) cylinder(d=26, h=1+2*EPS);
	}

}

// A small adapter to put around the rotor to fill the gap between that and the motor, and prevent the latter wobbling too much with a precession motion around the Z axis
module rotor_adapter()
{
	// PRINT THIS AT 0.45mm LINE WIDTH
	difference()
	{
		cylinder(d=25.1,h=13);
		translate([0,0,-EPS]) cylinder(d=24.3,h=13+2*EPS);
	}
}

module blades()
{
	intersection()
	{
		difference()
		{
			union()
			{
				for(angle = [0 : 360 / 10 : 360])
					translate([0,0,7]) rotate([65,0,angle]) translate([50,0,0]) cube([100,1.5,40], center=true);
			}
			translate([0,0,250+14]) cube(500, center=true);
			translate([0,0,-250]) cube(500, center=true);
			translate([0,0,-EPS]) cylinder(d=31.2, h=14+2*EPS);
		}
		cylinder(d=200, h=14);
	}
}

module fan()
{
	rotor_body();
	blades();
}

// WORK IN PROGRESS
module tail()
{
	difference()
	{
		scale([1,1,3]) intersection()
		{
			sphere(d=36);
			cylinder(d=36, h=36);
		}
		translate([0,0,-EPS]) cylinder(d=26.4, h=2);
		cylinder(d=19.3,h=10);
	}
}
	
*removal_block();
*rotor_adapter();
*screw_washer();
*fan();
*stator_front_shrinkage_ring();
*stator_rear_shrinkage_ring();
tail();
