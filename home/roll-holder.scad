$fn=50;
difference()
{
	cylinder(h=50,d=22.6);
	translate([0,0,-0.1]) cylinder(h=40,d=20.5);
}
translate([0,0,50]) scale([1,1,0.3]) sphere(d=22.6);
hull()
{
	translate([0,0,53]) sphere(d=4.5);
	translate([0,0,56]) sphere(d=3.5);	
}

