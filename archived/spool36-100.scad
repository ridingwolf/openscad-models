cube([33,35,3]);
translate([0,9,0])cube([33,3,10]);
translate([0,-28,9])cube([33,45,3]);
translate([0,-25,12]){
	intersection(){
	cube([20,40,100]);
	translate([10,18,0])cylinder(r= 18, h = 100, $fn = 100);
	}
}
translate([0,-22,110]){
	intersection(){
		cube([20,35,2]);
		translate([10,16,0])cylinder(r = 19, h = 2);
	}
}

//100
