settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(90,0);

pair A=(0,0);
pair B=dir(20);
pair C=1.2dir(70);

real r=0.15;
draw("$\alpha$",arc(A,A+r*unit(B-A),A+r*unit(C-A)),red);
draw("$\beta$",arc(B,B+r*unit(C-B),B+r*unit(A-B)),blue);
draw("$\gamma$",arc(C,C+r*unit(A-C),C+r*unit(B-C)),heavygreen);

draw("$a$",B--C,red);
draw("$b$",C--A,blue);
draw("$c$",A--B,heavygreen);

dot("$A$",A,SW,red);
dot("$B$",B,blue);
dot("$C$",C,NW,heavygreen);