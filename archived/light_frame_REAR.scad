difference(){
	union(){
		cube([43,85,10]);
		cube([10,85,25]);
		translate ([0,0,20]) cube([10,15,30]);
		translate ([0,70,20]) cube([10,15,30]);
		translate ([0,0,70]) cube ([1,85,20]);
		rotate(a = [-90,0,0]) {
			translate ([5,-58,0]) cylinder(h = 85, r = 15);
			translate([0,-200,0]){
				rotate ([0,0,180]){
					translate ([5,-100,0]) {
						difference() {
							cylinder(h = 85, r = 15);
							translate([-5,-20,-5]) cube ([25,40,105]);
						}
					}
				}
			}
		}

	}
	rotate(a = [-90,0,0]){
		translate ([20,-20,-1]) cylinder(h = 87, r = 10);
	}
	translate([30, 13, -1]) cylinder(r=6, h= 80);
	translate([30, 60, -1]) union(){
		cylinder(r=6, h= 80);
		translate([0, 12, 0]) cylinder(r=6, h= 80);
		translate([-6,0,0]) cube([12,12,80]);
	}
	translate ([-20,-5,-5]) cube ([20,95,85]);
	translate ([0,-5,0]) {
		difference() {
			translate ([-2,0,-2]) cube ([12,95,12]);
			rotate(a = [-90,0,0]) {	
				translate ([10,-10,-1]) cylinder(h = 105, r = 10);
			}
		}
	}
}