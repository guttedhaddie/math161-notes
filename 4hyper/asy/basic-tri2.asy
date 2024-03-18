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
pair B=(2,0);
pair C=(1.3,1);

pair Q=(1.3,0);

draw(C--A--B--C--Q);



real sc=0.08;
path sq=scale(sc)*unitsquare;
draw(shift(A-(0,sc))*sq);
draw(shift(B-(sc,sc))*sq);
draw(shift(Q-(sc,0))*sq);
draw(Label("$\ell$",Relative(0.3)),(0,1.2)--(0,-0.3),dashed);
draw(Label("$m$",Relative(0.7)),(2,-0.3)--(2,1.2),dashed);


dot(Label("$A$",black),A,SW,red);
dot(Label("$B$",black),B,SE,red);
dot(Label("$P$",black),C,NE,red);
dot(Label("$Q$",black),Q,S,red);