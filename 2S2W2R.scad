//Sender
translate([0, 20, 0])
SWR();

translate([0, -20, 0])
SWR();

module SWR()
{
    //Sender
    sphere(10);

    //Wire
    translate([10,0,0])
    rotate([0,90,0])
    cylinder(h = 50, r = 3);

    //Receiver
    translate([60,0,0])
    cube(10, center = true);
    
}