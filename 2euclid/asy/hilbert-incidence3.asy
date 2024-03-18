settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(80,0);

pair A=(0,0);
pair B=(1,0.4);
pair C=dir(80);

draw("$\ell$",A--B,dir(310));
draw("$m$",C--A);
draw("$n$",B--C);

dot(Label("$A$",black),A,SW,red);
dot(Label("$B$",black),B,SE,red);
dot(Label("$C$",black),C,NW,red);
