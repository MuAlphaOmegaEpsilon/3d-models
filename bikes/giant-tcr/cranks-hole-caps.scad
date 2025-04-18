$fn=50;

cylinder(d=25.6, h=0.2);
cylinder(d=23.7, h=0.6);
difference()
{
	intersection()
	{
		union()
		{
			for(i = [0 : 45 : 180])
				rotate([0,0,i]) cube([30,0.8,20], center=true);
		}
		cylinder(d=23.7, h=10);
	}
	cylinder(d=13.7, h=11);
}
