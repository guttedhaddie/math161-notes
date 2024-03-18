settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(120);

pair A=dir(80);
pair B=dir(160);
pair C=dir(220);
pair D=-B;

draw(unitcircle);
draw(B--A--C);

draw("$a$",C--B);
draw("$d$",D--B);
draw(C--D);
draw(C+0.1dir(B-C)--C+0.1dir(B-C)+0.1dir(D-C)--C+0.1dir(D-C));

draw("$\alpha$",arc(A,0.3,degrees(B-A),degrees(C-A)));
draw("$\alpha$",arc(D,0.3,degrees(B-D),degrees(C-D)));

dot(Label("$A$",black),A,dir(A),red);
dot(Label("$B$",black),B,dir(B),red);
dot(Label("$C$",black),C,dir(C),red);
dot(Label("$D$",black),D,dir(D),red);
//dotfactor=10;
dot((0,0),red);

