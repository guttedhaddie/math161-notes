settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(130);

draw(unitcircle);

pair O=(0,0);
pair A=dir(100);
pair B=dir(30);
pair C=dir(30+180);
pair P=dir(260);

draw(arc(O,B,A),blue+linewidth(1));
draw(arc(O,A,B),heavygreen+linewidth(1));

draw(C--B,NW);
draw(A--B,SW);

dot(Label("$A$",black),A,NW,red);
dot(Label("$B$",black),B,NE,red);
dot(Label("$C$",black),C,SW,red);

draw(A--P--B);
draw(A--(0,0));

dot(Label("$P$",black),P,S,red);

dot(Label("$O$",black),(0,0),SE,red);

