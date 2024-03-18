settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(0,130);

pair A=(0,0);
pair B=(1,0);
pair C=-B;
pair D=(0,sqrt(3));
draw(A--B);
draw(-2B--2B,dashed);
draw(D--(-D),dashed);
draw(unitcircle);
draw(shift(B)*scale(2)*unitcircle);
draw(shift(C)*scale(2)*unitcircle);

dot("$A$",A,SW);
dot("$B$",B,SE);
dot("$D$",D,N);
dot("$C$",C,SW);
dot((0,-2.5),white);
dot((0,2.5),white);