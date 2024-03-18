settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(140);

pair A=dir(180);
pair B=-A;
pair C=(0,sqrt(3));
draw(shift(A)*scale(2)*unitcircle);
draw(shift(B)*scale(2)*unitcircle);

draw(B--A--C--B,StickIntervalMarker(3,2,blue,dotframe(red)));


label("$A$",A,SW);
label("$B$",B,SE);
label("$C$",C,N);