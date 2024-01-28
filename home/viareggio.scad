module marmo_porta_ingresso()
{

	cube([1.05,0.23,0.04]);
	translate([0.04,0.04,2.44]) cube([0.97, 0.19, 0.04]);
	translate([0.04,0.04,0.04]) cube([0.04,0.19,2.40]);
	translate([0.97,0.04,0.04]) cube([0.04,0.19,2.40]);
}
module marmo_finestra_ingresso()
{

	cube([1.36,0.34,0.04]);
	translate([0.04,0.04,1.44]) cube([1.28, 0.19, 0.04]);
	translate([0.04,0.04,0.04]) cube([0.04,0.19,1.40]);
	translate([1.28,0.04,0.04]) cube([0.04,0.19,1.40]);
}
module marmo_finestra_bagno()
{
	cube([0.81,0.34,0.04]);
	translate([0.04,0.04,1.44]) cube([0.73, 0.19, 0.04]);
	translate([0.04,0.04,0.04]) cube([0.04,0.19,1.40]);
	translate([0.73,0.04,0.04]) cube([0.04,0.19,1.40]);
}
module marmo_finestra_camerina()
{
	cube([1.06,0.34,0.04]);
	translate([0.04,0.04,1.44]) cube([0.98, 0.19, 0.04]);
	translate([0.04,0.04,0.04]) cube([0.04,0.19,1.40]);
	translate([0.98,0.04,0.04]) cube([0.04,0.19,1.40]);
}
color("lightgrey") marmo_finestra_camerina();
