settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140);

pair A=(0,0);
pair B=dir(30);
pair C=1.3dir(150);

draw(1.3B--A--1.3C,Arrows);

draw("$\theta$",arc(A,0.45*unit(B-A),0.3*unit(C-A),CCW),blue,ArcArrow);
//draw("$-\theta$",arc(A,0.6*unit(C-A),0.6*unit(B-A),CW),N,orange,ArcArrow);
draw("$2\pi-\theta$",arc(A,0.35*unit(C-A),0.35*unit(B-A),CCW),heavygreen,ArcArrow);

dot(Label("$A$",black),A,S,red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,S,red);
