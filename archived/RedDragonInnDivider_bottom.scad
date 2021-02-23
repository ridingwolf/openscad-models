difference(){
    cube([280, 230, 95]);
    playerBoards();
    characterDecks();
    seaEvents();
    drinkDeck();
    counters();
}

module seaEvents() {
    translate([199, 90, 3]) cube([11,135,93]);  
}

module drinkDeck() {
    translate([205, 5, -5]) cube([70,80,105]);
    rotate([270, 0, 0]) {
        translate([240, -100, -5]) cylinder(r = 35, h = 15, $fn = 360);
        translate([245, -105, 80]) cylinder(r = 32, h = 15, $fn = 360);        
    }    
}

module counters() {
        translate([215, 90, -5]) cube([60,135,105]);
}

module playerBoards(){
    translate([5,-5,70]) cube([195, 240, 30]);
}

module characterDecks(){
    rotate([270, 0, 0]) {
            translate([55, -75, -5]) cylinder(r = 35, h = 240, $fn = 360);
            translate([150, -75, -5]) cylinder(r = 35, h = 240, $fn = 360);
    }
    for (i = [1 : 10]) {
        cardDeckSpace(1, i);
        cardDeckSpace(2, i);
    }    
 }
 
 module cardDeckSpace(row, position) {
    deckthickness = 18;
    rowPadding = (row * 100) - 95;
    colPadding = 5 + ((position - 1) * ( deckthickness + 4 )); 
    translate([rowPadding,colPadding,-5]) {
        if(position == 10){
            cube([95, deckthickness + 4, 105]);
        } else {
            cube([95, deckthickness, 105]);
        }
    }
}
