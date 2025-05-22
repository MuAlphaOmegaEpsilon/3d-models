$fn=100;

difference()
{
  cylinder(d=22, h=4.5);
  translate([0,0,-0.0001])cylinder(d=19.2, h=1.5);
  translate([0,0,-5]) cylinder(h=10, d=10.1);
}
