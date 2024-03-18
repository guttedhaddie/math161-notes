settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(150);

draw(arc((0,0),1,-20,200));

pair A=dir(60);
pair B=dir(0);
pair C=dir(145);
pair O=(0,0);

pair AB=0.5(A+B);
pair BC=0.5(C+B);
pair AC=0.5(A+C);
draw(AC--O--AB);
draw(BC--O);

draw(A--B,StickIntervalMarker(2,1,blue,dotframe(red)));
draw(C--B,StickIntervalMarker(2,2,blue,dotframe(red)));
draw(A--C,StickIntervalMarker(2,3,blue,dotframe(red)));


dot(Label("$A$",black),A,A,red);
dot(Label("$B$",black),B,B,red);
dot(Label("$C$",black),C,C,red);

dot(Label("$O$",black),O,SE,red);

real d=0.08;
draw(AC+d*unit(O-AC)--AC+d*unit(O-AC)+d*unit(A-C)--AC+d*unit(A-C));
draw(AB+d*unit(O-AB)--AB+d*unit(O-AB)+d*unit(A-B)--AB+d*unit(A-B));
draw(BC+d*unit(O-BC)--BC+d*unit(O-BC)+d*unit(B-C)--BC+d*unit(B-C));