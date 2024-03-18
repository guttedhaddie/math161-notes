settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(140);

pair A=(0,0);
pair B=(1,0);
pair C=0.3dir(70);
pair D=2.4C;
pair EE=1.6B-0.6D;
pair F=intersectionpoint(C--EE,A--B);

draw(B--A--D--EE--C);

dot(Label("$A$",black),A,S,red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,W,red);
dot(Label("$D$",black),D,W,red);
dot(Label("$E$",black),EE,E,red);
dot(Label("$F$",black),F,S,red);

