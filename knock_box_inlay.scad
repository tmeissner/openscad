// configuration values
fs  = 5;


content = "TM";
font = "Droid Sans Mono Bold";

difference () {
  union () {
    difference () {
      union () {
        cube([92,112,109]);
        hull () {
          translate([0, 0, 100]) cube([92,112,1]);
          translate([-0.5,-0.5,107]) cube([93,113,2]);
        }
      }
      translate([3, 3, 3]) cube([86,106,109]);
    }
  }
  translate([-0.6, 56, 90]) rotate([90,0,90]) cylinder(r1=12.7, r2=12.7, h=3.7, $fn=70);
  translate([89, 56, 90]) rotate([90,0,90]) cylinder(r1=12.7, r2=12.7, h=3.7, $fn=70);
  translate([46, -0.6, 112]) rotate([0,90,90]) cylinder(r1=25, r2=25, h=3.7, $fn=70);
}

  translate ([41, 0, 80]) rotate([90,0,0]) {
    linear_extrude(height=1.0) {
      text(content, font=font, size=fs);
    }
  }