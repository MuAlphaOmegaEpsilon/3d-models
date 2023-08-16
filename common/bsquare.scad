// Beveled square
module bsquare(width=1, height=1, bevel=0.1)
{
	difference()
	{
		square([width,height]);
		rotate(45) square(bevel*sqrt(2),center=true);
		translate([width,0]) rotate(45) square(bevel*sqrt(2),center=true);
		translate([0,height]) rotate(45) square(bevel*sqrt(2),center=true);
		translate([width,height]) rotate(45) square(bevel*sqrt(2),center=true);
	}
}
