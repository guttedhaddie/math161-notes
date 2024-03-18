settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,90);

real th=20;
real c=3;

pair A=(0,0);
pair B=c*dir(th);
path ar=A--A+3c*dir(th+45);
path br=B--B+3c*dir(180-60+th);
pair C=intersectionpoint(ar,br);
draw("$1$",A--B,heavygreen);
draw("$a$",B--C,red);
draw("$b$",C--A,blue);
draw("$\frac\pi 4$",arc(A,A+0.5unit(B-A),A+0.5unit(C-A)),red);
draw("$\frac\pi 3$",arc(B,B+0.5unit(C-B),B+0.5unit(A-B)),blue);
draw("$\gamma$",arc(C,C+0.5unit(A-C),C+0.5unit(B-C)),heavygreen);