$fn=250;

// The contact surface is contained within a cylinder with d=7.5
for (i = [0:2.5:360-2.5])
{
	difference()
	{
		translate([0,0,9.27]) rotate([0,0,i]) scale([0.1,1,1]) sphere(d=20);
		translate([0,0,19.27]) cube(20, center=true);
		translate([0,0,-10]) cube(20, center=true);				
	}
}
