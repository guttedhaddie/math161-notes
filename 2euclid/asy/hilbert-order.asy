settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(90);

real th=17;

pair A=(0,0);
pair B=dir(th);
pair C=1.3dir(th);

draw(-0.4dir(17)--1.9dir(th),Arrows);

dot(Label("$A$",black),A,S,red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,S,red);
//dot(Label("$D$",black),D,S,red);
//dot(Label("$E$",black),EE,S,red);
