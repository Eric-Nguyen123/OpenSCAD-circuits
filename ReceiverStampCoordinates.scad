$fn=15;
gridLength = 45;
gridSquares = 50;
oneGridLength = gridLength / gridSquares;
platformThickness = 1;
handleThickness = 5;
handleHeight = 20;

module buildPlatform(){
  translate([22.05,-22.05, -0.5 * platformThickness])
  cube([45,45,platformThickness], center = true);  
    
}

module buildHandle(){
    translate([22.05,-22.05,-0.5 * handleHeight - platformThickness])
    difference(){
        cube([handleThickness, 45, handleHeight], center = true);
        translate([0,0,4])
        cube([handleThickness + 1, 40, 22], center = true);
    }
    
    
}

module buildStamp(coordinates){
  buildPlatform();
  buildHandle();
  
  for (i=[0:1:len(coordinates) - 1]){
    coordinate = coordinates[i];
    rowNumber = coordinate[0];
    columnNumber = coordinate[1];
    translate([columnNumber * oneGridLength,rowNumber * -1 * oneGridLength,0])
        cylinder(h=2,d1=oneGridLength, d2 = 0.5);
      
  }
    
}

//Coordinates example: 
buildStamp(receiver_coordinates);

receiver_coordinates = [[0,0], [0,1], [0,2], [0,4], [49,49], [0, 24], [24, 24], [49, 24], [24, 0], [24, 49], [0, 49], [49, 0]];

