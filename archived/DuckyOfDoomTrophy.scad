$fn = 100;

module dot_at(position){
	translate(position){sphere( r = 6, $fn = 50);}
}
module import_ducky() {
	//scale(v = 6.5){import("/home/ridingwolf/Dropbox/3D/EvilDucky.stl");}
}
module die(){
	difference(){
		translate([-20,-20,-20])cube(40);
		difference(){
			sphere(r = 40);
			sphere(r = 30);
		}
		// 2
		dot_at([10,-22,-10]);
		dot_at([-10,-22,10]);
		// 3
		dot_at([-22,0,0]);
		dot_at([-22,10,-10]);
		dot_at([-22,-10,10]);
		// 4
		dot_at([22,-10,-10]);
		dot_at([22,10,-10]);
		dot_at([22,-10,10]);
		dot_at([22,10,10]);
		// 5
		dot_at([10,22,-10]);
		dot_at([-10,22,-10]);
		dot_at([0,22,0]);
		dot_at([10,22,10]);
		dot_at([-10,22,10]);
	}
}
module base(){
	difference(){
		union(){
			translate([0,0,-10]){sphere(r = 37);}
			translate([-20,-29,-11]){rotate(a = [75,0,0]){cube([40,22,4]);}}
			}
		translate([-40,-40,10]){cube(80);}
		translate([-40,-40,-50]){cube([80,80,40]);}
		translate([-40,-40,-50]){cube([80,20,2]);}
		translate([-21,-33,-14]){rotate(a = [75,0,0]){cube([42,25,20]);}}	
	}
}

union(){ 
	//translate([24,-28,20]){ import_ducky(); } 
	die(); 
	translate([0,0,-30]) {base();}
}