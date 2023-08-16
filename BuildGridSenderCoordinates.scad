$fn=15;
gridLength = 45;
gridSquares = 50;
oneGridLength = gridLength / gridSquares;
module oneGrid(){
  difference(){
    cube([oneGridLength,oneGridLength,0.2], center = true);
    cube([oneGridLength - 0.01,oneGridLength - 0.01,0.3], center = true);

  }
}

module buildGrid(coordinates){
  for ( row=[0:1:gridSquares - 1]) {
    for ( col=[0:1:gridSquares - 1]) {
      translate([col * oneGridLength,row * -1 * oneGridLength,0])
      oneGrid();
    }
  }
  
  for (i=[0:1:len(coordinates) - 1]){
    coordinate = coordinates[i];
    rowNumber = coordinate[0];
    columnNumber = coordinate[1];
    translate([columnNumber * oneGridLength,rowNumber * -1 * oneGridLength,0])
        cylinder(h=2,d1=oneGridLength, d2 = 0.5);
      
  }
    
}

//Coordinates example: 
buildGrid(sender_coordinates);

sender_coordinates = [[0,0], [0,1], [49,49], [0, 24], [24, 24], [49, 24], [24, 0], [24, 49]];

