$fn=50;

module hexagonal_cut()
{
	translate([0,10,-0.1]) cylinder(h=14, d=4.3, $fn=6);
	translate([0,-10,-0.1]) cylinder(h=14, d=4.3, $fn=6);
}

difference()
{
	union()
	{
		cylinder(h=1.5, d=37.0);
		cylinder(h=2.8, d=34.8);
		cylinder(h=13.5, d=25.95);
	}
	translate([0,0,-0.01])cylinder(h=14, d=21.75);
	translate([0,0,4])cylinder(h=14, d=22.8);
	hexagonal_cut();
	rotate([0,0,30]) hexagonal_cut();
	rotate([0,0,60]) hexagonal_cut();
	rotate([0,0,90]) hexagonal_cut();
	rotate([0,0,120]) hexagonal_cut();
	rotate([0,0,150]) hexagonal_cut();
}

