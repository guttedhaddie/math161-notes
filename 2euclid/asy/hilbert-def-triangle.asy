settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,55);

//dot((0,-1.1),white);

pair A=(0,0);
pair B=(2,0);
pair C=1.65dir(40);
pair al=I*(unit(A-B));

dot("$A$",A,S);
dot("$B$",B,S);
dot("$C$",C,NW);
draw(C--A--B--cycle);
