settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(100);

pair A=(0,0);
pair B=(1,0);
pair C=(0.2,1);
pair D=0.4*B+0.6*C+0.2*NE;
pair EE=0.6*A+0.4*C;
pair F=0.5*A+0.5*B+0.2*NE;

path ell=D..EE..0.1dir(225)..F{NE};

draw(A--B--C--cycle);
draw(Label("$\ell$",Relative(0.2)),ell,blue);

dot(Label("$A$",black),A,NE,red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,NE,red);
dot(Label("$D$",black),intersectionpoint(B--C,ell),dir(75),red);
dot(Label("$E$",black),EE,NW,red);
dot(Label("$F$",black),intersectionpoint(B--A,ell),dir(-80),red);
