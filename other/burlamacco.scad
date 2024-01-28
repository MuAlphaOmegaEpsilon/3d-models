$fn=50;
// Cappello
module cap()
{
	//color([1,1,1,0.1]) square([11,10]);
	difference()
	{
		union()
		{
			translate([5.5,5]) scale([11*0.6,10]) circle(d=1);
			square([11,5]);
		}
		translate([-1.027,6]) scale([11*0.6,10]) circle(d=1);
		translate([12.027,6]) scale([11*0.6,10]) circle(d=1);
		translate([-5,-9]) rotate(-5) square(10);
		translate([+5+11,-9]) scale([-1,1]) rotate(-5) square(10);
		translate([5.5,0]) circle(d=5.5);
	}
	
}
translate([0,0,30]) rotate([90,0,0]) cap();


// Testa
translate([0,-3,26]) sphere(d=11);
// Collare
translate([0,0,22.5]) rotate([35,0,0]) cylinder(h=1, d=15);

// Corpo
cylinder(h=20, d=10);
// Bottone corpo
translate([0,-5,11]) sphere(d=5);
// Gambe
translate([-7,-7,-16]) rotate([0,28,50]) cylinder(h=20, d=7);
translate([6,11.5,-12.5]) rotate([40,-20,0]) cylinder(h=20, d=7);
// Braccia
translate([3,0,15]) rotate([0,50,-20]) cylinder(h=20, d=5);
translate([-3,0,15]) rotate([0,-50,20]) cylinder(h=20, d=5);
