$fn=360;

plate();


module plate() {
    difference() {
        outline();
        translate([-1,-1,-1]) cube([4,117,3]);
        translate([3,116,-1]) rotate([0,0,135]) cube([5,4,3]);
        translate([40,116,-1]) cube([4,6,14]);
        translate([40,116,-1]) rotate([0,0,-45]) cube([5,4,3]);
        translate([-3.75,-1,-1]) {
            cube([10,8,3]);
            translate([5,8,0]) cylinder(h=3, r=5);
        }
        translate([17.35,-1,-1]) {
            cube([10,8,3]);
            translate([5,8,0]) cylinder(h=3, r=5);
        }
        translate([37.95,-1,-1]) {
            cube([10,8,3]);
            translate([5,8,0]) cylinder(h=3, r=5);
        }
    }
         
}

module outline() {
    cube([41.7,119.5,1]);
    translate([0,120,1.5]) cube([42,1,10.5]);
    translate([0,119.5,0]) intersection() {
        translate([0,0,1.5]) rotate([0,90,0]) difference() {
            cylinder(h=42, r=1.5);
            translate([0,0,-1]) cylinder(h=44, r=0.5);
        };
        cube([43,1.5 ,1.5]);
    };    
}
