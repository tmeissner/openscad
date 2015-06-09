// configuration values
l   = 34;  // distance between ground and inner clip
h   = 7;   // height of clip
t   = 5;   // thickness of clip
w   = 80;  // width of ground plate
fs  = 8;   // font size

// internal variables, not change these
in  = 35 / 2;
out = in + t;
d   = l + in;

content = "TM";
font = "Droid Sans Mono Bold";

difference() {
  union() {
    difference() {
      difference() {
        cylinder(r1=out, r2=out, h=h, $fn=50);
        cylinder(r1=in, r2=in, h=h, $fn=50);
      }
      translate([0,33,0]) cylinder(r1=25, r2=25, h=h);
    }
    translate([-w/2,-d,0]) {
      cube(size = [w,7,h+10]);
    }
    difference() {
      translate([-fs,-d+7,0]) cube(size=[fs*2,d-7-in+2,h]);
      translate([0,1,0]) cylinder(r=out, h=h);
    }
    rotate([0,0,90]) {
      translate ([-d+10,-fs/2,h]) {
        linear_extrude(height=2) {
          text(content, font=font, size=fs);
        }
      }
    }
  }
  translate([-(w/2-10),-d+7,(h+10)/2]) rotate([90]) cylinder(h=3, r1=3, r2=0, $fn=20);
  translate([w/2-10,-d+7,(h+10)/2])  rotate([90]) cylinder(h=3, r1=3, r2=0, $fn=20);
}
