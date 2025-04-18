$fn=100;

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
			union()
			{
				translate([-6,-15.5,0]) cube([12,31,4]);
				hull()
				{
					translate([-8,-15.5,0.9]) cube([16,31,0.1]);
					translate([-6,-15.5,1.6]) cube([12,31,0.1]);
				}
			}
			
		}
		translate([0,0,-0.1]) difference()
		{
			cylinder(h=1,d=30);
			translate([0,0,-0.1]) cylinder(h=2,d=22);
			cube([10,34,2], center=true);
		}
		translate([0,0,-0.1]) cylinder(h=1,d=4);
		translate([5,4.5,-0.1]) cylinder(h=1,d=3);
		translate([5,-4.5,-0.1]) cylinder(h=1,d=3);
		translate([-5,4.5,-0.1]) cylinder(h=1,d=3);
		translate([-5,-4.5,-0.1]) cylinder(h=1,d=3);
		translate([8,4.5,0.4]) cube([6,3,1], center=true);
		translate([8,-4.5,0.4]) cube([6,3,1], center=true);
		translate([-8,4.5,0.4]) cube([6,3,1], center=true);
		translate([-8,-4.5,0.4]) cube([6,3,1], center=true);
	}
	intersection()
	{
		union()
		{
			translate([-15,6,0]) cube([15,15,0.8]);
			rotate([0,0,180]) translate([-15,6,0]) cube([15,15,0.8]);
		}
		cylinder(h=4,d=34);
	}
	difference()
	{
		cylinder(h=4,d=34);
		translate([0,0,-0.01]) cylinder(h=5,d=25);
		translate([-6,-6,-0.01]) cube([30,30,5]);
		rotate([0,0,180]) translate([-6,-6,-0.01]) cube([30,30,5]);
	}
	intersection()
	{
		translate([6.5,0,0.8]) hull()
		{
			translate([4.5,0,0.3]) cube([1,2,0.6], center=true);
			translate([0,0,0.05]) cube([0.1,1,0.1], center=true);
		}
		cylinder(h=2,d=22);
	}
	intersection()
	{
		translate([-6.5,0,0.8]) hull()
		{
			translate([-4.5,0,0.3]) cube([1,2,0.6], center=true);
			translate([0,0,0.05]) cube([0.1,1,0.1], center=true);
		}
		cylinder(h=2,d=22);
	}
}

module magene_lock_shape()
{
	cylinder(h=3, d=24.7);
	intersection()
	{
		cube([11.1,30,4], center=true);
		cylinder(h=1.76, d=28.7);
		scale([0.65,1,1]) cylinder(h=1.76, d=31);	
	}
	translate([0,0,3]) cylinder(h=0.7, d=33.6);
}

module magene_base_shape()
{
	intersection()
	{
		scale([1,1.73,1]) cylinder(h=0.001, d=54.2);
		union()
		{
			cube([54.3,21,1], center=true);
			cube([43.2,35.2,1], center=true);
		}
	}
	translate([21.59,15.7/2,0]) scale([1,2,1]) cylinder(h=0.001, d=10);
	translate([21.59,-15.7/2,0]) scale([1,2,1]) cylinder(h=0.001, d=10);
	translate([-21.59,15.7/2,0]) scale([1,2,1]) cylinder(h=0.001, d=10);
	translate([-21.59,-15.7/2,0]) scale([1,2,1]) cylinder(h=0.001, d=10);	
}

module magene_C206Pro()
{
	translate([4.7,0,0]) magene_lock_shape();
	translate([0,0,3.7]) hull()
	{
		magene_base_shape();
		translate([2.5,0,15]) scale([70.3/54.3,45/35.7,1]) magene_base_shape();
	}
}

module handlebar_mount()
{
	translate([0,-10,0]) scale([1,2,5/17]) difference()
	{
		sphere(d=17);
		translate([0,-8.5,0]) cube(17, center=true);
		translate([0,0,8.5]) cube(17, center=true);
	}
	difference()
	{
		hull()
		{
			union()
			{
				translate([-10.5,-10,0]) cube([21,21,10]);
				translate([-20.5,0,0]) cube([41,11,10]);
				translate([10.5,0,0]) cylinder(h=10, d=20);
				translate([-10.5,0,0]) cylinder(h=10, d=20);
				
			}	
			translate([0,-10,0]) scale([1,2,3/21]) difference()
			{
				sphere(d=21);
				translate([0,-20.5,0]) cube(41, center=true);
				translate([0,0,20.5]) cube(41, center=true);
			}
			translate([0,57.4,6.2]) cylinder(h=5.5, d=35);
		}
		translate([12,0.5,-0.1]) cylinder(h=20, d=6);
		translate([12,0.5,-1.1]) cylinder(h=5.7, d=9);
		translate([-12,0.5,-0.1]) cylinder(h=20, d=6);
		translate([-12,0.5,-1.1]) cylinder(h=5.7, d=9);
		translate([0,57.4,4.701])
		{
			translate([0,0,3]) cylinder(h=4, d=34);
		}
	}
	translate([0,57.4,7.7]) garmin_mount();
}

*translate([-20.5,11,0]) cube([41,11,28]);
*translate([0,55,8]) rotate([0,0,90]) magene_C206Pro();
*handlebar_mount();

garmin_mount();















