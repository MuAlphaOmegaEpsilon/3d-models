$fn=150;

module inner_teardrop_shape()
{	translate([-23,0]) circle(d=6);
	translate([8,0]) intersection()
	{	translate([-16,0])          square([32,17.5], center=true);
		translate([0,-89.5+17.5/2]) circle(d=179);
		translate([0,+89.5-17.5/2]) circle(d=179);
	}
	translate([8,0]) intersection()
	{	translate([8,0])            square([16,17.5], center=true);
		translate([0,-28.0+17.5/2]) circle(d=56);
		translate([0,+28.0-17.5/2]) circle(d=56);
	}
	translate([21.5,0]) circle(d=9);
}

module outer_teardrop_shape()
{	translate([-33.29,0]) circle(d=6);
	translate([10,0]) intersection()
	{	translate([-44.5/2,0])       square([44.5,24], center=true);
		translate([0,(-224.52+24)/2]) circle(d=224.52);
		translate([0,(+224.52-24)/2]) circle(d=224.52);
	}
	translate([10,0]) intersection()
	{	translate([22.6/2,0])            square([22.6,24], center=true);
		translate([0,(-68.55+24)/2])  circle(d=68.55);
		translate([0,(+68.55-24)/2])  circle(d=68.55);
	}
	translate([29.74,0]) circle(d=9);
}

module inner_seatpost()
{	HEIGHT=55;
	difference()
	{	rotate([0,-12,0]) translate([0,0,-HEIGHT*2+20]) linear_extrude(HEIGHT*2) inner_teardrop_shape();
		translate([0,0,500])         cube(1000, center=true);
		translate([0,0,-500-HEIGHT]) cube(1000, center=true);
	}
}

SMX=1.00; // Scale multiplier for SX (scaling X-axis)
SMY=1.30; // Scale multiplier for SY (scaling Y-axis)
FULCRUM_01=160; OFF_01=-.000;        SX_01=1+.010*SMX; SY_01=1+.001*SMY; CSX_01=       1.000; CSY_01=       1.000;
FULCRUM_02=100; OFF_02=-.600+OFF_01; SX_02=1+.005*SMX; SY_02=1+.002*SMY; CSX_02=CSX_01*SX_01; CSY_02=CSY_01*SY_01;
FULCRUM_03=090; OFF_03=-.150+OFF_02; SX_03=1+.006*SMX; SY_03=1+.003*SMY; CSX_03=CSX_02*SX_02; CSY_03=CSY_02*SY_02;
FULCRUM_04=080; OFF_04=-.210+OFF_03; SX_04=1+.007*SMX; SY_04=1+.004*SMY; CSX_04=CSX_03*SX_03; CSY_04=CSY_03*SY_03;
FULCRUM_05=070; OFF_05=-.280+OFF_04; SX_05=1+.008*SMX; SY_05=1+.005*SMY; CSX_05=CSX_04*SX_04; CSY_05=CSY_04*SY_04;
FULCRUM_06=060; OFF_06=-.360+OFF_05; SX_06=1+.009*SMX; SY_06=1+.006*SMY; CSX_06=CSX_05*SX_05; CSY_06=CSY_05*SY_05;
FULCRUM_07=050; OFF_07=-.450+OFF_06; SX_07=1+.010*SMX; SY_07=1+.007*SMY; CSX_07=CSX_06*SX_06; CSY_07=CSY_06*SY_06;
FULCRUM_08=045; OFF_08=-.280+OFF_07; SX_08=1+.014*SMX; SY_08=1+.008*SMY; CSX_08=CSX_07*SX_07; CSY_08=CSY_07*SY_07;
FULCRUM_09=040; OFF_09=-.370+OFF_08; SX_09=1+.018*SMX; SY_09=1+.009*SMY; CSX_09=CSX_08*SX_08; CSY_09=CSY_08*SY_08;
FULCRUM_10=035; OFF_10=-.460+OFF_09; SX_10=1+.022*SMX; SY_10=1+.010*SMY; CSX_10=CSX_09*SX_09; CSY_10=CSY_09*SY_09;
FULCRUM_11=030; OFF_11=-.570+OFF_10; SX_11=1+.026*SMX; SY_11=1+.013*SMY; CSX_11=CSX_10*SX_10; CSY_11=CSY_10*SY_10;
FULCRUM_12=025; OFF_12=-.700+OFF_11; SX_12=1+.032*SMX; SY_12=1+.016*SMY; CSX_12=CSX_11*SX_11; CSY_12=CSY_11*SY_11;
FULCRUM_13=020; OFF_13=-.890+OFF_12; SX_13=1+.034*SMX; SY_13=1+.019*SMY; CSX_13=CSX_12*SX_12; CSY_13=CSY_12*SY_12;
FULCRUM_14=015; OFF_14=-1.08+OFF_13; SX_14=1+.036*SMX; SY_14=1+.022*SMY; CSX_14=CSX_13*SX_13; CSY_14=CSY_13*SY_13;
FULCRUM_15=015; OFF_15=-.000+OFF_14; SX_15=1+.038*SMX; SY_15=1+.025*SMY; CSX_15=CSX_14*SX_14; CSY_15=CSY_14*SY_14;
FULCRUM_16=015; OFF_16=-.000+OFF_15; SX_16=1+.040*SMX; SY_16=1+.028*SMY; CSX_16=CSX_15*SX_15; CSY_16=CSY_15*SY_15;
FULCRUM_17=015; OFF_17=-.000+OFF_16; SX_17=1+.042*SMX; SY_17=1+.040*SMY; CSX_17=CSX_16*SX_16; CSY_17=CSY_16*SY_16;
FULCRUM_18=015; OFF_18=-.000+OFF_17; SX_18=1+.044*SMX; SY_18=1+.052*SMY; CSX_18=CSX_17*SX_17; CSY_18=CSY_17*SY_17;
FULCRUM_19=015; OFF_19=-.000+OFF_18; SX_19=1+.046*SMX; SY_19=1+.064*SMY; CSX_19=CSX_18*SX_18; CSY_19=CSY_18*SY_18;
FULCRUM_20=015; OFF_20=-.000+OFF_19; SX_20=1+.046*SMX; SY_20=1+.076*SMY; CSX_20=CSX_19*SX_19; CSY_20=CSY_19*SY_19;
FULCRUM_21=015; OFF_21=-.000+OFF_20; SX_21=1+.046*SMX; SY_21=1+.078*SMY; CSX_21=CSX_20*SX_20; CSY_21=CSY_20*SY_20;
FULCRUM_22=015; OFF_22=-.000+OFF_21; SX_22=1+.046*SMX; SY_22=1+.060*SMY; CSX_22=CSX_21*SX_21; CSY_22=CSY_21*SY_21;
FULCRUM_23=015; OFF_23=-.000+OFF_22; SX_23=1+.046*SMX; SY_23=1+.042*SMY; CSX_23=CSX_22*SX_22; CSY_23=CSY_22*SY_22;
FULCRUM_24=015; OFF_24=-.000+OFF_23; SX_24=1+.046*SMX; SY_24=1+.024*SMY; CSX_24=CSX_23*SX_23; CSY_24=CSY_23*SY_23;
FULCRUM_25=015; OFF_25=-.000+OFF_24; SX_25=1+.046*SMX; SY_25=1+.024*SMY; CSX_25=CSX_24*SX_24; CSY_25=CSY_24*SY_24;
FULCRUM_26=015; OFF_26=-.000+OFF_25; SX_26=1+.046*SMX; SY_26=1+.012*SMY; CSX_26=CSX_25*SX_25; CSY_26=CSY_25*SY_25;
	
module outer_seatpost()
{
	translate([FULCRUM_01+OFF_01,0,00]) linear_extrude(6, scale=[SX_01,SY_01]) scale([CSX_01,CSY_01]) translate([-FULCRUM_01,0]) outer_teardrop_shape();
	translate([FULCRUM_02+OFF_02,0,06]) linear_extrude(2, scale=[SX_02,SY_02]) scale([CSX_02,CSY_02]) translate([-FULCRUM_02,0]) outer_teardrop_shape();
	translate([FULCRUM_03+OFF_03,0,08]) linear_extrude(2, scale=[SX_03,SY_03]) scale([CSX_03,CSY_03]) translate([-FULCRUM_03,0]) outer_teardrop_shape();
	translate([FULCRUM_04+OFF_04,0,10]) linear_extrude(2, scale=[SX_04,SY_04]) scale([CSX_04,CSY_04]) translate([-FULCRUM_04,0]) outer_teardrop_shape();
	translate([FULCRUM_05+OFF_05,0,12]) linear_extrude(2, scale=[SX_05,SY_05]) scale([CSX_05,CSY_05]) translate([-FULCRUM_05,0]) outer_teardrop_shape();
	translate([FULCRUM_06+OFF_06,0,14]) linear_extrude(2, scale=[SX_06,SY_06]) scale([CSX_06,CSY_06]) translate([-FULCRUM_06,0]) outer_teardrop_shape();
	translate([FULCRUM_07+OFF_07,0,16]) linear_extrude(2, scale=[SX_07,SY_07]) scale([CSX_07,CSY_07]) translate([-FULCRUM_07,0]) outer_teardrop_shape();
	translate([FULCRUM_08+OFF_08,0,18]) linear_extrude(2, scale=[SX_08,SY_08]) scale([CSX_08,CSY_08]) translate([-FULCRUM_08,0]) outer_teardrop_shape();
	translate([FULCRUM_09+OFF_09,0,20]) linear_extrude(2, scale=[SX_09,SY_09]) scale([CSX_09,CSY_09]) translate([-FULCRUM_09,0]) outer_teardrop_shape();
	translate([FULCRUM_10+OFF_10,0,22]) linear_extrude(2, scale=[SX_10,SY_10]) scale([CSX_10,CSY_10]) translate([-FULCRUM_10,0]) outer_teardrop_shape();
	translate([FULCRUM_11+OFF_11,0,24]) linear_extrude(2, scale=[SX_11,SY_11]) scale([CSX_11,CSY_11]) translate([-FULCRUM_11,0]) outer_teardrop_shape();
	translate([FULCRUM_12+OFF_12,0,26]) linear_extrude(2, scale=[SX_12,SY_12]) scale([CSX_12,CSY_12]) translate([-FULCRUM_12,0]) outer_teardrop_shape();
	translate([FULCRUM_13+OFF_13,0,28]) linear_extrude(2, scale=[SX_13,SY_13]) scale([CSX_13,CSY_13]) translate([-FULCRUM_13,0]) outer_teardrop_shape();
	translate([FULCRUM_14+OFF_14,0,30]) linear_extrude(2, scale=[SX_14,SY_14]) scale([CSX_14,CSY_14]) translate([-FULCRUM_14,0]) outer_teardrop_shape();
	translate([FULCRUM_15+OFF_15,0,32]) linear_extrude(2, scale=[SX_15,SY_15]) scale([CSX_15,CSY_15]) translate([-FULCRUM_15,0]) outer_teardrop_shape();
	translate([FULCRUM_16+OFF_16,0,34]) linear_extrude(2, scale=[SX_16,SY_16]) scale([CSX_16,CSY_16]) translate([-FULCRUM_16,0]) outer_teardrop_shape();
	translate([FULCRUM_17+OFF_17,0,36]) linear_extrude(2, scale=[SX_17,SY_17]) scale([CSX_17,CSY_17]) translate([-FULCRUM_17,0]) outer_teardrop_shape();
	translate([FULCRUM_18+OFF_18,0,38]) linear_extrude(2, scale=[SX_18,SY_18]) scale([CSX_18,CSY_18]) translate([-FULCRUM_18,0]) outer_teardrop_shape();
	translate([FULCRUM_19+OFF_19,0,40]) linear_extrude(2, scale=[SX_19,SY_19]) scale([CSX_19,CSY_19]) translate([-FULCRUM_19,0]) outer_teardrop_shape();
	translate([FULCRUM_20+OFF_20,0,42]) linear_extrude(2, scale=[SX_20,SY_20]) scale([CSX_20,CSY_20]) translate([-FULCRUM_20,0]) outer_teardrop_shape();
	translate([FULCRUM_21+OFF_21,0,44]) linear_extrude(2, scale=[SX_21,SY_21]) scale([CSX_21,CSY_21]) translate([-FULCRUM_21,0]) outer_teardrop_shape();
	translate([FULCRUM_22+OFF_22,0,46]) linear_extrude(2, scale=[SX_22,SY_22]) scale([CSX_22,CSY_22]) translate([-FULCRUM_22,0]) outer_teardrop_shape();
	translate([FULCRUM_23+OFF_23,0,48]) linear_extrude(2, scale=[SX_23,SY_23]) scale([CSX_23,CSY_23]) translate([-FULCRUM_23,0]) outer_teardrop_shape();
	translate([FULCRUM_24+OFF_24,0,50]) linear_extrude(2, scale=[SX_24,SY_24]) scale([CSX_24,CSY_24]) translate([-FULCRUM_24,0]) outer_teardrop_shape();
	translate([FULCRUM_25+OFF_25,0,52]) linear_extrude(2, scale=[SX_25,SY_25]) scale([CSX_25,CSY_25]) translate([-FULCRUM_25,0]) outer_teardrop_shape();
	translate([FULCRUM_26+OFF_26,0,54]) linear_extrude(2, scale=[SX_26,SY_26]) scale([CSX_26,CSY_26]) translate([-FULCRUM_26,0]) outer_teardrop_shape();
}

module oval_rail_shape()
{	translate([-1,0]) circle(d=7);
	translate([1,0])  circle(d=7);
	                  square([2,7], center=true);
}

module oval_rail(l)
rotate([0,90,0]) translate([0,0,-l/2]) linear_extrude(l) oval_rail_shape();

module saddle_holder()
difference()
{	translate([-103.3,0,57]) scale([1,1,0.75]) rotate([90,0,90]) rotate_extrude(angle=180) difference()
	{	rotate([0,0,90]) translate([80,0]) scale([CSX_26*SX_26,CSY_26*SY_26]) outer_teardrop_shape();
		translate([-1000,0]) square(1000);
	}
	translate([-12,+(34+7)/2,55]) oval_rail(120);
	translate([-12,-(34+7)/2,55]) rotate([180,0,0]) oval_rail(120);
}

module seatpost()
difference()
{	union()
	{	inner_seatpost();
		outer_seatpost();
	}
	rotate([0,-12,0]) translate([0,0,-65]) scale([0.8,0.8,1]) linear_extrude(130, scale=0.8) inner_teardrop_shape();
	translate([-12,+(34+7)/2,55]) oval_rail(120);
	translate([-12,-(34+7)/2,55]) rotate([180,0,0]) oval_rail(120);
}

module expander_plug()
difference()
{
	rotate([0,-12,0]) translate([0,0,-65]) scale([0.8,0.8,1]) linear_extrude(130, scale=0.8) inner_teardrop_shape();
	translate([0,0,52]) cylinder(h=50, d=100);
	translate([0,0,-500+27]) cube(1000, center=true);
}


*expander_plug();
*saddle_holder();
seatpost();
*translate([-10,0,22]) cylinder(h=130, d=10);


// Screwdriver passage 
*translate([0,0,-65]) cylinder(h=130, d=10);
// Saddle holder height
*translate([0,0,57]) cylinder(h=20.5,d=50);
// Oblique construction lines
*color("red") translate([-36.34,0,0]) rotate([0,-12,0]) translate([0,0,-10]) cylinder(d=0.1, h=100);
*color("red") translate([34.3,0,0]) rotate([0,-12,0]) translate([0,0,-10]) cylinder(d=0.1, h=100);
// Inner bounding box
*cube([52,17.5,10], center=true);
// Outer bounding box (5.5mm)
*translate([-1,0,0]) cube([69,24,10], center=true);
// Inner circle center line
*color("red") translate([26-18,0,0]) cube([0.1,40,1], center=true);
