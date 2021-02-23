//verwarming (space that needs to stay clear), use red
/*
color("red") {
	translate([0,-121,0]) cube([45,80, 160]);
	translate([0,-40,0]) {
		translate([0,0,14]) cube([15,100,51]);
		translate([8,105,20]) cylinder(r = 1, h=44);
		translate([8,100,64]) {rotate(a = [-90,0,0]) cylinder(r = 1, h = 5.5);}
		translate([8,104,0]) cylinder(r = 2, h=18);
		translate([8,109,0]) cylinder(r = 2, h=18);
		translate([8,100,18]) {rotate(a = [-90,0,0]) cylinder(r = 2, h = 13);}
		translate([8,106,58]) {rotate(a = [-90,0,0]) cylinder(r = 3, h = 12);}
	}
};
*/
floordimentions = [55,100,2];
//groundlevel
difference(){
	union(){
		translate([0,-20,0]) cube(floordimentions); 
		polyhedron (points =[
								[0,80,0],[0,100,0],[55,80,0] //base
								,[0,80,2],[0,100,2],[55,80,2] //top
							],
						triangles = [
										[0,1,2],
										[3,4,5],
										[0,1,3],[3,1,4],[1,2,4],[2,4,5],[0,2,3],[3,2,5]
						]);
	}
	translate([9,66.5, -1]) cylinder(r = 5, h = 4);
	translate([-1,61.5, -1]) cube([10,10,4]);
	translate([45,-25,-1]) {
		difference() {
			cube([15,15,4]);
			translate([0,15,-1]) cylinder(r = 10, h = 6);
		}
	}	
};
// between groundlevel & firstfloor
translate([0,0,2])
union(){	
	//poles
	translate([20,-15,0]) cylinder(r = 3, h = 112);
	translate([30,30,0]) {color("green") cylinder(r = 5, h = 112);}
	translate([5,90,0]) cylinder(r = 3, h = 85);
	translate([5,60,87]) cylinder(r = 3, h = 25);
	translate ([37,-5,0]) union() {
	color("green"){
 		difference(){
			cylinder(r =5, h = 85);
			translate([-15,-15,10]) cube([30,30,30]);
		}
	}
	
	rotate(a=[0,0,15]){
						translate([-15,-15, 10]) difference() {
											color("blue"){cube([30,30,30]);}
											translate ([2,2,2])cube([26,26,26]);
											translate([27, 15, 15]){rotate( a=[0,90,0]) cylinder(r = 10, h = 4);}
											translate([15, 27, 15]){rotate( a=[0,90,90]) cylinder(r = 10, h = 4);}
											}
					}
	}
	translate ([37,60,0]) union() {
		color("green") {
			difference(){
				cylinder(r =5, h = 85);
				translate([-17.5,-17.5,30]) cube([35,35,35]);
			}
		}
	
		rotate(a=[0,0,0]){
							translate([-17.5,-17.5, 30]) difference() {
												color("blue"){cube([35,35,35]);}
												translate ([2,2,2])cube([31,31,31]);
												translate([32, 17.5, 17.5]){rotate( a=[0,90,0]) cylinder(r = 10, h = 4);}
												translate([17.5, -1, 17.5]){rotate( a=[0,90,90]) cylinder(r = 12.5, h = 4);}
												}
						}
		}

};
//firstfloor
translate ([0,0,87]) union(){
	difference() {
		union(){
			translate([0,-20,0]) cube(floordimentions);
			polyhedron (points =[
									[0,80,0],[0,100,0],[55,80,0] //base
									,[0,80,2],[0,100,2],[55,80,2] //top
								],
							triangles = [
											[0,1,2],
											[0,1,3],[0,2,3],
											[3,4,5],
											[3,1,4],[3,2,5],[1,2,4],[2,4,5]
							]);
		}
	translate([-1,-21,-1]) cube([16,71,4]);
	translate([-1,-21,-1]) cube([11,76,4]);
	translate([10,50,-1]) cylinder(r = 5, h = 4);
	//translate([35,20,-1]) cube([21,20,4]);
	translate([45,-25,-1]) {
		difference() {
			cube([15,15,4]);
			translate([0,15,-1]) cylinder(r = 10, h = 6);
		}
	}	
	translate([35,0,-1]) {
		difference() {
			cube([21,20,4]);
			translate([0,0,-1]) cylinder(r = 20, h = 6);
		}
	}
	translate([45,30,-1]) cylinder(r = 20, h = 6);
	translate([45,45,-1]) {
		difference() {
			cube([15,15,4]);
			translate([0,15,-1]) cylinder(r = 10, h = 6);
		}
	}
	translate([45,0,-1]) {
		difference() {
			cube([15,15,4]);
			translate([0,0,-1]) cylinder(r = 10, h = 6);
		}
	}
	
	 //holes for support poles, commented out for printing
	//translate([20,-15,-1]) cylinder(r = 3, h = 4);
	//translate([25,30,-1]) cylinder(r = 5, h = 4);
	
	}
};
//top floor
difference() {
	translate([0,-20,114]) cube([37,85, 2]);
	translate([27,55,113]) {
		difference() {
			cube([15,15,4]);
			translate([0,0,-1]) cylinder(r = 10, h = 6);
		}
	}
	translate([27,-25,113]) {
		difference() {
			cube([15,15,4]);
			translate([0,15,-1]) cylinder(r = 10, h = 6);
		}
	}
}
translate([0,-20,116]) cube([2,85, 10]);
difference(){
translate([2,-20,116]) cube([25,2, 10]);
translate([30,-17,126]) {rotate(a=[90,0,0]) cylinder(r=10, h=4);}
}
