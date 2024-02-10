$fn=250;

difference()
{
  union()
  {
	cylinder(h=3, d=28.6);
	translate([0,0,3]) hull()
	{
	  cylinder(h=11, d=23.9);
	  cylinder(h=13, d=20);
	}
  }
  translate([0,0,-0.1]) cylinder(h=20, d=12);
  translate([-15,0,1.9]) cube([4,20,4], center=true);
  translate([15,0,1.9]) cube([4,20,4], center=true);
}

