settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(120,60,IgnoreAspect);

pair A=(0,0);
pair B=(1,0.4);
pair C=dir(80);

draw(A--B--C--cycle);

path ell=-0.1(B+C)--0.7*(B+C);

draw(Label("$\ell$",Relative(1)),ell,blue);

pair M=intersectionpoint(ell,B--C);

dot(Label("$A$",black),A,NW,red);
dot(Label("$B$",black),B,SE,red);
dot(Label("$C$",black),C,NW,red);
dot(M,red);
