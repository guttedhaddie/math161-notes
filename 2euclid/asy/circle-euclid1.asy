settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(180);

pair A=dir(180);
pair B=-A;
pair C=2B-A;
pair D=2.8B-A;
pair P=(0,sqrt(3));
pair Q=-P;
draw(shift(A)*scale(2)*unitcircle);
draw(shift(B)*scale(2)*unitcircle);

draw(C--3.5B-A,Arrow);
draw(B--A--P--B--C,StickIntervalMarker(4,2,blue,dotframe(red)));


label("$A$",A,SW);
label("$B$",B,SE);
label("$C$",C,SW);
dot(Label("$D$",black),D,S,red);
label("$P$",P,N);
dot(Label("$Q$",black),Q,S,red);
label("$\alpha$",A+1.65dir(240));
label("$\beta$",B+1.65dir(300));