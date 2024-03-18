settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(80);

real t1=240;
real t2=290;

pair A=(0,0);
pair B=dir(t1);
pair C=1.2dir(t2);
pair G=1.8dir(t1);
pair H=1.8*1.2dir(t2);
//pair J=dir(t2);

draw(B--C--A--G--H--C);
//draw(B--J,dashed);

dot(Label("$A$",black),A,E,red);
dot(Label("$B$",black),B,W,red);
dot(Label("$C$",black),C,E,red);
dot(Label("$G$",black),G,SW,red);
dot(Label("$H$",black),H,SE,red);
//dot(Label("$J$",black),J,E,red);