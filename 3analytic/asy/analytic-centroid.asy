settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

pair A=(0,0);
pair C=1.7dir(65);
pair B=dir(0);
pair M1=(C+B)/2;
pair G=2*M1/3;
pair M2=(A+B)/2;
pair M3=(C+A)/2;

draw(A--B--C--cycle);
draw(A--M1,dashed);
draw(B--M3,dashed);
draw(C--M2,dashed);


dot(Label("$A$",black),A,SW,red);
dot(Label("$C$",black),C,E,red);
dot(Label("$B$",black),B,SE,red);
dot(Label("$M$",black),M1,NE,red);
dot(Label("$P$",black),M2,S,red);
dot(Label("$N$",black),M3,NW,red);
dot(Label("$G$",black),G,1E,red);
