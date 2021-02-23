union(){
	difference() {
		union() {
			cube([60,40,10]);
			translate([58, 8,0]) cube([8, 26,10]);
			translate([58,8,0]) cylinder(h=10, r=8);
			translate([58,32.15,0]) cylinder(h=10, r=8);
			}
		translate([58,10,-1]) cylinder(h = 12, r= 5);
		translate([58,30,-1]) cylinder(h = 12, r= 5);
	}
	translate([0,20,0]) cylinder(h = 150, r = 20);
	translate([0,20,150]) cylinder(h = 20, r1 = 20, r2 = 25);
}
