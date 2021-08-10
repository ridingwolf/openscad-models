$fn=360;
translate([0,0,0]) difference() {
   plate();
   translate([0,-18,-1])stencil(); 
}

translate([0,119,3.7])union() {
    cube([3.75,3,4.5]);
    translate([3.75,3,2.25]) rotate([90,0,0]) cylinder(h=3, r=2.25);
}


translate([0,0,3.7])union() {
    cube([3.75,3,4.5]);
    translate([3.75,3,2.25]) rotate([90,0,0]) cylinder(h=3, r=2.25);
}

module stencil() {
    translate([17.25,39.25,0]) screw();
    translate([37.75,39.25,0]) screw();
    translate([17.25,60.75,0]) screw();
    translate([17.25,82.25,0]) screw();
    translate([17.25,103.75,0]) screw();
    translate([6.1,31.2,0]) hdmi();
    translate([26.6,31.2,0]) hdmi();
    translate([5.7,52.3,0]) displayPort();
    translate([5.7,73.5,0]) displayPort();
    translate([5.7,94.7,0]) displayPort();
}

module screw() {
    cylinder(h=3, r1=2, r2=2.5);
}

module displayPort() {
    cube([6.5,17,3]);
}

module hdmi() {
    cube([6.1,15.6,3]);
}

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
        translate([0,119,3.7])union() {
            cube([3.75,3,4.5]);
            translate([3.75,3,2.25]) rotate([90,0,0]) cylinder(h=3, r=2.25);
}
    }
         
}

module outline() {
    cube([43,119.5,1]);
    translate([0,120,1.5]) cube([42,1,10.5]);
    translate([0,119.5,0]) intersection() {
        translate([0,0,1.5]) rotate([0,90,0]) difference() {
            cylinder(h=42, r=1.5);
            translate([0,0,-1]) cylinder(h=44, r=0.5);
        };
        cube([43,1.5 ,1.5]);
    };    
}
