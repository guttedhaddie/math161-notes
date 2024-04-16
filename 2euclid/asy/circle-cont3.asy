settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(80);

pair O=(0,0);
pair A=1.2dir(100);
pair B=dir(45);
pair C=0.4*A+0.6*B;

draw(C--O--A--B--O);

//draw("$\alpha$",arc(A,dir(46.5),dir(43.5)));

dot(Label("$A$",black),A,W,red);
dot(Label("$B$",black),B,E,red);
dot(Label("$C$",black),C,NE,red);
dot(Label("$O$",black),O,SW,red);
