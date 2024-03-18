settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,55);

pair A=(0,0);
pair B=(2,1.1);
pair al=I*(unit(A-B));

//dot((0,-1.1),white);

dot("$A$",A,al);
dot("$B$",B,al);
pair P(real t){return t*A+(1-t)*B;}
draw(P(-0.5)--P(1.5),Arrows);