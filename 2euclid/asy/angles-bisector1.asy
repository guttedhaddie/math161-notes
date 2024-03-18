settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

pair A=(-1,0);
pair B=(1,0);
pair D=(1.2,2.5);
pair C=(-1.2,2.5);

pair M=intersectionpoint(A--D,B--C);

draw(C--A--B--D);
draw(B--C,dashed);
draw(A--D,dashed);

draw(arc(A,A+0.2*unit(B-A),A+0.2*unit(D-A)));
draw(arc(B,B+0.2*unit(C-B),B+0.2*unit(A-B)));

dot("$A$",A,SW);
dot("$B$",B,SE);
dot("$C$",C,SW);
dot("$D$",D,SE);
dot("$M$",M,2N);




