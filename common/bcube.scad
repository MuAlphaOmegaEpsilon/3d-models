// Beveled cube
module bcube(width=1, depth=1, height=1, bevel=0.1, bevel_corners=false)
{
	if(bevel_corners)
	{
		hull()
		{
			translate([bevel,bevel,0]) cube([width-bevel*2, depth-bevel*2, height]);
			translate([bevel,0,bevel]) cube([width-bevel*2, depth, height-bevel*2]);
			translate([0,bevel,bevel]) cube([width, depth-bevel*2, height-bevel*2]);
		}
	}
	else
	{
		bevel=2*bevel/sqrt(2);
		difference()
		{
			cube([width, depth, height]);

			rotate([45,0,0]) translate([-0.01, -bevel/2, -bevel/2]) cube([width+0.02, bevel, bevel]);
			translate([0,depth,0]) rotate([45,0,0]) translate([-0.01, -bevel/2, -bevel/2]) cube([width+0.02, bevel, bevel]);
			translate([0,0,height]) rotate([45,0,0]) translate([-0.01, -bevel/2, -bevel/2]) cube([width+0.02, bevel, bevel]);
			translate([0,depth,height]) rotate([45,0,0]) translate([-0.01, -bevel/2, -bevel/2]) cube([width+0.02, bevel, bevel]);

			rotate([0,0,45]) translate([-bevel/2, -bevel/2, -0.01]) cube([bevel, bevel, height+0.02]);
			translate([0,depth,0]) rotate([0,0,45]) translate([-bevel/2, -bevel/2, -0.01]) cube([bevel, bevel, width+0.02]);
			translate([width,0,0]) rotate([0,0,45]) translate([-bevel/2, -bevel/2, -0.01]) cube([bevel, bevel, width+0.02]);
			translate([width,depth,0]) rotate([0,0,45]) translate([-bevel/2, -bevel/2, -0.01]) cube([bevel, bevel, width+0.02]);

			rotate([0,45,0]) translate([-bevel/2, -0.01, -bevel/2]) cube([bevel, depth+0.02, bevel]);
			translate([width,0,0]) rotate([0,45,0]) translate([-bevel/2, -0.01, -bevel/2]) cube([bevel, depth+0.02, bevel]);
			translate([0,0,height]) rotate([0,45,0]) translate([-bevel/2, -0.01, -bevel/2]) cube([bevel, depth+0.02, bevel]);
			translate([width,0,height]) rotate([0,45,0]) translate([-bevel/2, -0.01, -bevel/2]) cube([bevel, depth+0.02, bevel]);
		}
	}
}
