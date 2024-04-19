settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180,0);

pair B=(0,0);
pair C=(2,0);
pair A=(0.4,1);
pair G=(A+C)/2;

path p=(0,0.3)--(1.8,0.3);


pair D=intersectionpoint(p,A--B);
pair EE=intersectionpoint(p,A--C);
draw("$d_1$",(B.x,D.y)--B,white);
draw("$d_2$",C--(C.x,EE.y),white);
draw(C--A--B--cycle);

draw(Label("$\ell$",Relative(1)),D+0.1(D-G)--G+0.4(G-D));
draw(Label("$m$",Relative(1)),p);

dot(Label("$A$",black),A,1.5dir(170),red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,S,red);
dot(Label("$D$",black),D,dir(300),red);
dot(Label("$E$",black),G,N,red);
dot(Label("$G$",black),EE,S,red);

