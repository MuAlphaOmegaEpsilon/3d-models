//$fn=150;

module fork(height) { translate([0, 0, -0.01]) cylinder(h=height + 0.01, d=28.6); }
module neck(height) {
	hull()
	{
		translate([18.5,0,0]) scale([1,1.3,1]) cylinder(h=height, d=10);
		cylinder(h=height, d=35);
		translate([-19.6,0,0]) scale([0.6,1,1]) cylinder(h=height, d=32);
	}
}

difference()
{	union()
	{	hull()
		{	cylinder(d=47, h=0.1);
			difference()
			{	neck(18.5);
				translate([0,0,10.7]) rotate([0,17,0]) cylinder(d=70, h=20);
			}
		}
		translate([0,0,3.5]) neck(15.7);
		translate([0,0,18.5])
		union()
		{
			difference()
			{	neck(2);
				translate([-0.3,0,1.99]) minkowski()
				{
					scale([0.92,0.88,0.25]) neck(1);
					sphere(2);
				}
			}
			difference()
			{
				neck(2);
				translate([0,0,-1]) scale([0.995,0.995,1]) neck(4);
			}
		}
	}
	fork(100);
}

// Construction figure: theorical stem circumference
*#translate([-4.3,0,19.21]) cylinder(h=0.1, d=50);
