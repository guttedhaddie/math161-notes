settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180);

pair B=(0,0);
pair C=(2,0);
pair A=(0.4,1);
pair G=(A+C)/2;

path p=(0,0.3)--(2,0.3);

draw(C--A--B--cycle);

pair D=intersectionpoint(p,A--B);
pair EE=intersectionpoint(p,A--C);

draw(Label("$\ell$",Relative(1)),D+0.1(D-G)--G+0.4(G-D));
draw(Label("$m$",Relative(1)),p);

dot(Label("$A$",black),A,dir(110),red);
dot(Label("$B$",black),B,W,red);
dot(Label("$C$",black),C,E,red);
dot(Label("$D$",black),D,dir(300),red);
dot(Label("$E$",black),G,N,red);
dot(Label("$G$",black),EE,S,red);

