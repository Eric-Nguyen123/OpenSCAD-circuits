$fn=15;
gridLength = 2.7;
gridSquares = 3;
oneGridLength = gridLength / gridSquares;
module oneGrid(){
  difference(){
    cube([oneGridLength,oneGridLength,0.2], center = true);
    cube([oneGridLength - 0.01,oneGridLength - 0.01,0.3], center = true);

  }
}

module buildGrid(array){
  for ( row=[0:1:gridSquares - 1]) {
    for ( col=[0:1:gridSquares - 1]) {
      translate([col * oneGridLength,row * -1 * oneGridLength,0])
      oneGrid();
    }
  }
  
  for ( row=[0:1:gridSquares - 1]) {
    for ( col=[0:1:gridSquares - 1]) {
      if(array[row][col] == 1){
        translate([col * oneGridLength,row * -1 * oneGridLength,0])
        cylinder(h=2,d1=oneGridLength, d2 = 0.5);
      }   
    }
  }
  
    
}

receiver_array = [[0,0,0],
                 [0,0,0],
                 [0,0,1]];

buildGrid(receiver_array);





