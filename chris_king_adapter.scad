in=30;
out=44.3;
shaft=16;


difference() {
    union() {
        cylinder(r1=in/2, r2=in/2, h=20, $fn=80);
        cylinder(r1=out/2, r2=out/2, h=12, $fn=80);
    }
    cylinder(r1=shaft/2, r2=shaft/2, h=20, $fn=80);
}
