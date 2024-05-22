// dimensions are in millimeters!

$fn = $preview ? 24 : 32;

thickness = 0.8;
length = 150;
width = 40;
cornerRadius = 2;
objectionDimensions = [56.8, 40];

translate([(length - objectionDimensions[0]) / 2, 0, 0])
linear_extrude(thickness)
    minkowski() {
        square([length - cornerRadius, width - cornerRadius], true);
        circle(cornerRadius);
    }

translate([0, -objectionDimensions[1] / 2, 0])
    rotate([0, -90, -90])
        import("Objection.stl");
