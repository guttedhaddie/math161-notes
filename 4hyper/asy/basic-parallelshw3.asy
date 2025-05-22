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
pair B=(2,0);
pair C=(1.3,0.8);
pair M=(C.x,0);

draw(C--A--B--C);

draw(C--M,dashed);

real sc=0.08;
path sq=scale(sc)*unitsquare;
draw(shift(A-(0,sc))*sq);
draw(shift(B)*rotate(180,(0,0))*sq);
draw(shift(M)*sq);
draw((0,1)--(0,-0.2),dashed);
draw((2,-0.2)--(2,1),dashed);


pair T=B+0.8N;
pair SS=A+N;

dot(Label("$A$",black),A,SW,red);
dot(Label("$B$",black),B,SE,red);
dot(Label("$C$",black),C,NE,red);
dot(Label("$M$?",black),M,S,red);
//dot(Label("$S$",black),SS,NW,red);