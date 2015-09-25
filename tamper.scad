// configuration values
rb  = 57/2;
h1  = 10;
h2  = 80;
fs  = 5;


content = "TM";
font = "Droid Sans Mono Bold";

union () {
  cylinder(r1=rb, r2=rb, h=2, $fn=50);
  translate([0, 0, 2]) {
    cylinder(r1=rb, r2=rb-2, h=h1, $fn=50);
  }
  cylinder(r1=10, r2=10, h=h2, $fn=50);
  hull () {
    translate ([0, 0, h2]) {
      sphere(r=17, $fn=50);
    }
    translate ([0, 0, h1*3]) {
      sphere(r=10, $fn=50);
    }
  }
  translate ([-fs, -20, h1+2]) {
    linear_extrude(height=1.5) {
      text(content, font=font, size=fs);
    }
  }
}
