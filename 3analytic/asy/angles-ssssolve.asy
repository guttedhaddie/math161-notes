settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,110);

real th=-100;

pair A=(0,0);
pair B=7*dir(th);
path c1=arc(A,6,th,th+90);
path c2=arc(B,3,th+90,th+180);
pair C=intersectionpoint(c1,c2);
draw("$7$",A--B);
draw("$3$",B--C);
draw("$6$",C--A);
draw("$\alpha$",arc(A,A+unit(B-A),A+unit(C-A)));
draw("$\beta$",arc(B,B+0.6unit(C-B),B+0.6unit(A-B)));
draw("$\gamma$",arc(C,C+0.5unit(A-C),C+0.5unit(B-C)));