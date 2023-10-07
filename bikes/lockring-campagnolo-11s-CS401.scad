$fn=50;

module hexagonal_cut()
{
	translate([0,10,-0.1]) cylinder(h=10, d=4.3, $fn=6);
	translate([0,-10,-0.1]) cylinder(h=10, d=4.3, $fn=6);
}

difference()
{
	union()
	{
		cylinder(h=2.4, d=38.6);
		cylinder(h=10, d=27);
	}
	translate([0,0,-0.01])cylinder(h=10, d=21.75);
	translate([0,0,3])cylinder(h=10, d=22.8);
	hexagonal_cut();
	rotate([0,0,30]) hexagonal_cut();
	rotate([0,0,60]) hexagonal_cut();
	rotate([0,0,90]) hexagonal_cut();
	rotate([0,0,120]) hexagonal_cut();
	rotate([0,0,150]) hexagonal_cut();
}

