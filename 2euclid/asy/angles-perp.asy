settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(140,0);

pair A=(0,0);
pair B=(1,0);
pair C=(1.3,1.5);
pair D=(C.x,-C.y);
pair M=(C.x,0);

draw(C--D);
draw((-0.3,0)--(1.8,0));
label("$\ell$",(1.9,0));
draw(C--A--D,blue,StickIntervalMarker(2,1,blue,dotframe(red)));

label("$A$",A,SW);
dot(Label("$B$",black),B,S,red);
dot(Label("$M$",black),M,SE,red);
label("$P$",C,E);
label("$Q$",D,E);
draw(arc(A,A+0.25dir(D-A),A+0.2dir(C-A)),heavygreen,StickIntervalMarker(2,2,heavygreen));

draw(M+(0,0.1)--M+(-0.1,0.1)--M+(-0.1,-0.1)--M+(0,-0.1));
