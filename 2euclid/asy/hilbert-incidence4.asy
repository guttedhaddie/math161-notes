settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(0,90);

pair A=(0,0);
pair B=(1,0);
pair C=(0.8,1.1);
pair D=(0.6,0.3);

draw(A--B--C--D--cycle--C);
draw(B--D);

dot(Label("$A$",black),A,S,red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,E,red);
dot(Label("$D$",black),D,NW,red);
