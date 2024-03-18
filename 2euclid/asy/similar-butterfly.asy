settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(140);

path c=unitcircle;

pair P=dir(170);
pair Q=dir(30);
pair M=0.5(P+Q);

pair A=dir(110);
pair B=dir(55);
pair C=intersectionpoint(A--M+4*(M-A),c);
pair D=intersectionpoint(B--M+4*(M-B),c);


pair X=intersectionpoint(A--D,P--Q);
pair Y=intersectionpoint(B--C,P--Q);

draw(c);
draw(A--C--B--D--cycle);
draw(P--X);
draw(X--Y,StickIntervalMarker(2,2,blue));
draw(Y--Q);

dot(Label("$A$",black),A,A,red);
dot(Label("$B$",black),B,B,red);
dot(Label("$C$",black),C,C,red);
dot(Label("$D$",black),D,D,red);
dot(Label("$M$",black),M,2dir(77),red);
dot(Label("$P$",black),P,P,red);
dot(Label("$Q$",black),Q,Q,red);
dot(Label("$X$",black),X,NW,red);
dot(Label("$Y$",black),Y,SE,red);