$fn = 50;

module bike_frame() {
  translate([ 0, 0, -6 ]) cylinder(h = 6, d = 31.6);
  cylinder(h = 2.88, d = 28.5);
}

module hemisphere(diameter) {
  difference() {
    sphere(d = diameter);
    translate([ 0, 0, -diameter / 2 ]) cube(diameter, center = true);
  }
}

module raw_headcap() {
  cylinder(h = 2.88, d = 31.6);
  translate([ 0, 0, 2.88 ]) scale([ 1, 1, 0.25 ]) hemisphere(31.6);
}

module nut() {
  cylinder(h = 5.5, d = 10.1);
  translate([ 0, 0, -35 + 5.5 ]) cylinder(h = 35, d = 6);
}

difference() {
  raw_headcap();
  difference() {
    translate([ 0, 0, -0.01 ]) cylinder(h = 2.89, d = 28.8);
    cylinder(h = 6, d = 15);
  }
  translate([ 0, 0, 1.1 ]) nut();
  translate([ 0, 0, 1.4 ]) nut();
}
