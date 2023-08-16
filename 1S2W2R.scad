//Sender
sphere(10);

rotate([0,0,30])
WR();

rotate([0,0,-30])
WR();

module WR()
{
//Wire
translate([10,0,0])
rotate([0,90,0])
cylinder(h = 50, r = 3);

//Receiver
translate([60,0,0])
cube(10, center = true);
}