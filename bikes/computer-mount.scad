$fn=50;

module garmin_mount()
{
	difference()
	{
		cylinder(h=4,d=34);
		translate([0,0,0.8]) cylinder(h=1,d=30);
		translate([0,0,1.01]) cylinder(h=3,d=25);
		translate([0,0,0.8]) intersection()
		{
			cylinder(h=4,d=30);
			translate([0,0,2]) cube([12,31,4], center=true);
		
		}
		translate([0,0,-0.1]) difference()
		{
			cylinder(h=1,d=30);
			translate([0,0,-0.1]) cylinder(h=2,d=22);
			cube([10,34,2], center=true);
		}
		translate([0,0,-0.1]) cylinder(h=1,d=4);
		translate([5,5,-0.1]) cylinder(h=1,d=3);
		translate([5,-5,-0.1]) cylinder(h=1,d=3);
		translate([-5,5,-0.1]) cylinder(h=1,d=3);
		translate([-5,-5,-0.1]) cylinder(h=1,d=3);
		translate([8,5,0.4]) cube([6,3,1], center=true);
		translate([8,-5,0.4]) cube([6,3,1], center=true);
		translate([-8,5,0.4]) cube([6,3,1], center=true);
		translate([-8,-5,0.4]) cube([6,3,1], center=true);
	}
	
}

garmin_mount();