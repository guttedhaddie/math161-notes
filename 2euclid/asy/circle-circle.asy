settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(90);

pair A=0.8dir(140);
pair P=0.4dir(220);
pair Q=0.9dir(305);
pair R=0.8dir(45);

draw(scale(0.8)*unitcircle);
draw(A--(0,0)--R,StickIntervalMarker(2,2,blue,dotframe(red)));
label("$O$",(0,0),S);
label("$R$",R,R);
label("$A$",A,A);
dot(Label("$P$",black),P,W,red);
dot(Label("$Q$",black),Q,E,red);