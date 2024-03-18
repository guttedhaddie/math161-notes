settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(0,130);

draw(unitsquare);

pair A=(0,0);
pair B=(1,0);
pair C=(1,1);
pair D=(0,1);
draw(A--C,dashed);
draw(B--D,dashed);

dot("$A$",A,SW);
dot("$B$",B,SE);
dot("$C$",C,NE);
dot("$D$",D,NW);
