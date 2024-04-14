settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(180);

pair A=(0,0);
pair B=(1,0);
pair C=1.5dir(60);
pair D=2dir(25);
pair EE=-1.5B;

pair MM=0.4EE+0.6C;

draw(A..MM..C+(0,0.3){E}..D{dir(25)},white);

draw(A--C);
draw(B--C--EE--cycle);
draw(A--1.2D,blue,Arrow);

pair M=intersectionpoint(A--D,B--C);



dot(Label("$A$",black),A,S,red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,NW,red);
dot(Label("$I$",black),D,SE,red);
dot(Label("$D$",black),EE,S,red);
dot(Label("$M$",black),M,SE,red);
