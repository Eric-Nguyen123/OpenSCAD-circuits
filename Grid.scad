x = 100;
y = 100;
z = 1;
fen_x = 15; 
fen_y = 15; 
fen_size = 5;
fen_size_x = fen_size * x / 100;
fen_size_y = fen_size * y / 100;
strut_x = (x - fen_x * fen_size_x) / (fen_x + 1);
strut_y = (y - fen_y * fen_size_y) / (fen_y + 1);

difference() {
cube(size=[x, y, z]); 
for (i = [0:fen_x - 1]) {
translate([i * (fen_size_x + strut_x) + strut_x, 0, 0])
for (i = [0:fen_y - 1]) {
translate([0, i * (fen_size_y + strut_y) + strut_x, -1])
cube([fen_size_x, fen_size_y, z+2]);
}
}
}