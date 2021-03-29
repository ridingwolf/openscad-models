$fn = 360;

difference() {
    cylinder(28, d = 25);
    translate([0, 0, -1]) cylinder(30, d = 15);
    translate([-7.5,0,-1]) cube([5,20, 30]);
    rotate([90, 0, 105]) translate([-2,-1,-0.75]) cube([20, 30, 8]);
}
translate([-12.5,0,0]) cube([5,70, 28]);
translate([7.5,0,28]) rotate([0, 90, 15]) {
    difference() {
        union() {
            cube([28, 50, 15]); 
            rotate([0,90,0]) translate([-7.5,50,0]) cylinder(28, d = 15);
        }
        translate([4, -1, 9]) flash_shoe();       
    }    
}


module flash_shoe() {
    cube([19, 22, 4]);
    translate([2.5, 0, 1]) cube([14, 22, 6]);
}