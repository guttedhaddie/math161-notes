settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(120,90,IgnoreAspect);

pair A=(0,0);
pair B=(1,0.4);
pair C=dir(80);

draw(A--B--C--cycle);

path ell=(0.8,0)--(-0.1,0.7);

draw("$\ell$",ell);

pair P=intersectionpoint(ell,A--B);
pair Q=intersectionpoint(ell,A--C);

dot(Label("$A$",black),A,SW,red);
dot(Label("$B$",black),B,SE,red);
dot(Label("$C$",black),C,NW,red);
dot(P,red);
dot(Q,red);
