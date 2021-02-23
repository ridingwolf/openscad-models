//$fn=360;
union(){
// ducky
translate([24,-28,20]){scale(v = 6.5){import("/home/ridingwolf/Dropbox/3D/EvilDucky.stl");}}
//translate([24,-28,20]){scale(v = 6.5){import("C:/Users/Wouter/Dropbox/3D/EvilDucky.stl");}}
// die
difference(){
	translate([-20,-20,-20])cube(40);
	difference(){
		sphere(r = 40);
		sphere(r = 30);
	}
	// 2
	translate([10,-22,-10]){sphere( r = 6);}
	translate([-10,-22,10]){sphere( r = 6);}
	// 3
	translate([-22,0,0]){sphere( r = 6);}
	translate([-22,10,-10]){sphere( r = 6);}
	translate([-22,-10,10]){sphere( r = 6);}
	// 4
	translate([22,-10,-10]){sphere( r = 6);}
	translate([22,10,-10]){sphere( r = 6);}
	translate([22,-10,10]){sphere( r = 6);}
	translate([22,10,10]){sphere( r = 6);}
	// 5
	translate([10,22,-10]){sphere( r = 6);}
	translate([-10,22,-10]){sphere( r = 6);}
	translate([0,22,0]){sphere( r = 6);}
	translate([10,22,10]){sphere( r = 6);}
	translate([-10,22,10]){sphere( r = 6);}
}
// base
translate([0,0,-30]){
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
	//translate([-20,-29,-11]){rotate(a = [75,0,0]){cube([40,22,4]);}}
	}
}