settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(160,0);

pair B=(0,0);
pair C=(2,0);
pair A=(1,1);
pair D=(3,0);
pair M=(A+C)/2;
pair E=2M-B;

draw(A--B--D);
draw(C--E);

draw(A--C,StickIntervalMarker(2,1,blue));
draw(B--E,StickIntervalMarker(2,2,blue));

draw(arc(A,0.15,180*angle(B-A)/pi,180*angle(C-A)/pi),StickIntervalMarker(2,1,blue));
draw(arc(C,0.15,180*angle(E-C)/pi,180*angle(A-C)/pi),StickIntervalMarker(2,1,blue));
draw(arc(M,0.15,180*angle(C-M)/pi,180*angle(E-M)/pi,CCW),StickIntervalMarker(1,1,blue));
draw(arc(M,0.15,180*angle(A-M)/pi,180*angle(B-M)/pi,CCW),StickIntervalMarker(1,1,blue));

dot(Label("$A$",black),A,N,red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,S,red);
dot(Label("$M$",black),M,dir(80),red);
dot(Label("$E$",black),E,N,red);