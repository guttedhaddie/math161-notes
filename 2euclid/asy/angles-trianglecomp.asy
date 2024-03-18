settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180);

pair A=(-1.7,0);
pair B=(0,0);
pair C=dir(130);
pair D=(-1,0);

draw("$c$",A--B);
draw("$b$",C--A);
draw("$a$",B--C);

dot(Label("$A$",black),A,S,red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,E,red);

real r=0.2;
draw("$\alpha$",arc(A,A+r*unit(B-A),A+r*unit(C-A)));
draw("$\beta$",arc(B,B+r*unit(C-B),B+r*unit(A-B)));
draw("$\gamma$",arc(C,C+r*unit(A-C),C+r*unit(B-C)));