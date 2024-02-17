$fn=100;

hull()
{
	cylinder(h=22, d=5.6);
	translate([0,0,25]) cylinder(h=0.1, d=0.5);
}
hull()
{
	cylinder(h=0.01, d=14);
	translate([0,0,1]) cylinder(h=1, d=18);
}
