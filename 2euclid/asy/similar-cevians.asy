settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140);

pair B=(0,0);
pair C=(2,0);
pair A=(1,1);

pair P=(0.8,0.6);

draw(C--A--B--cycle);

pair X=intersectionpoint(A--A+10(P-A),B--C);
pair Y=intersectionpoint(B--B+10(P-B),A--C);
pair Z=intersectionpoint(C--C+10(P-C),B--A);

draw(A--X);
draw(B--Y);
draw(C--Z);

dot(Label("$A$",black),A,NW,red);
dot(Label("$B$",black),B,SW,red);
dot(Label("$C$",black),C,SE,red);
dot(Label("$X$",black),X,S,red);
dot(Label("$Y$",black),Y,NE,red);
dot(Label("$Z$",black),Z,NW,red);
dot(Label("$P$",black),P,2dir(-80),red);

