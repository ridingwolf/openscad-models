difference(){
union(){
	intersection(){
		union(){
			translate([0,-25,75])cylinder(r = 20, h = 50, $fn = 200);
			translate([-35,-20,75])cube([55,120,50]);
		}
		intersection(){
		translate([100,0,75])cylinder(r = 120, h = 50, $fn = 200);
		union(){
			translate([-50,-50,75]) cube([58,130,50]);
			translate([0,-25,75])cylinder(r = 20, h = 50, $fn = 200);
			translate([-77.5,60,75])cylinder(r = 90, h = 50, $fn = 200);	
		}}
	}
translate([0,-27.5,0])cylinder(r = 10.5, h = 200, $fn = 100);
translate([0,27.5,0])cylinder(r = 10.5, h = 200, $fn = 100);
}

union(){
	intersection(){
		translate([-58.36,0,0])cylinder(r = 75, h = 200, $fn = 200);
		translate([58.36,0,0])cylinder(r = 75, h = 200, $fn = 200);
		translate([-17,-33,0]) cube([34,65,200]);
	}
}
translate([0,-27.5,0])cylinder(r = 10.5, h = 200, $fn = 100);
translate([0,27.5,0])cylinder(r = 10.5, h = 200, $fn = 100);
translate([-10,60,100]) {rotate(a = [25,90,0]) cylinder(r1 = 11.3, r2 = 10.2, h = 30.5, $fn = 100);}
translate([0,47,93]){rotate(a = [0,0,25])cube([30,50,14]);}
}


