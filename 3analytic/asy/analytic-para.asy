settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(120);

real r=0.4;
real R=0.35;

pair O=(0,0);
pair A=(2,-0.5);
pair B=(-0.4,2);
pair C=A+B;

draw(O--C,dashed);
draw(O--A,StickIntervalMarker(1,1,blue,dotframe(red)));
draw(B--C,StickIntervalMarker(1,1,blue,dotframe(red)));
draw(O--B,StickIntervalMarker(1,2,blue,dotframe(red)));
draw(A--C,StickIntervalMarker(1,2,blue,dotframe(red)));

draw(arc(O,r,degrees(A),degrees(C),CCW),StickIntervalMarker(1,1,blue));
draw(arc(O,R,degrees(C),degrees(B),CCW),StickIntervalMarker(1,2,blue));
draw(arc(C,r,degrees(B-C),degrees(-C),CCW),StickIntervalMarker(1,1,blue));
draw(arc(C,R,degrees(-C),degrees(A-C),CCW),StickIntervalMarker(1,2,blue));

label("$O$",O,SW);
label("$A$",A,E);
label("$B$",B,W);
label("$C$",C,NE);
