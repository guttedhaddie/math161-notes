settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(120);

pair A=(0,0);
pair B=1.2dir(0);
pair C=0.8dir(60);
pair I=0.7dir(25);

draw(1.3*B--A--1.5*C,Arrows);
//draw(A--1.2*I,Arrow);
//draw(B--C);

//pair M=intersectionpoint(A--I,B--C);

dot(Label("$A$",black),A,SW,red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,dir(60+90),red);
dot(Label("$I$",black),I,SE,red);
//dot(Label("$M$",black),M,2dir(80),red);
