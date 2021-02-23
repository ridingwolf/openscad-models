// pin D = 8mm
union(){
difference(){
	union (){
		cylinder(r = 8, h =4);
		cylinder(r = 4, h =50);
		translate([0,0,50]) sphere(r = 4);

	}
	union() {
		translate([0,0,-1]) cylinder(r = 3, h = 51);
		translate([0,0,50]) sphere(r = 3);
		translate([0,1,18]) cube ([5,1,25]);
		translate([0,-2,18]) cube ([5,1,25]);
		translate([0,-2,41]) cube ([5,4,2]);
		translate([0,0,42.6]) {
			difference() {
				rotate(a = [0,90,0]) cylinder (r = 2, h = 5);
				translate([0,-2,-2]) cube ([5,4,2]);
			}
		}
//translate([-5,0,40]) cube(10);
	}
}
		translate([3,1,38.2]){
	difference(){	
	rotate (a =[90,0,0]) cylinder (r = 3 , h = 2);
	translate([-5,-3,-4]) cube ([5, 4, 8]);}
}
}

