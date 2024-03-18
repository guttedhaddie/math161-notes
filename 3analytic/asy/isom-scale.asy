settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(140,0);

real t=0.4;

pair O=(0,0);
pair Q=dir(-10);
pair gQ=dir(70);
pair X=t*Q;
pair gX=t*gQ;


draw(gQ--O--Q);
draw(scale(abs(t))*unitcircle,dashed+blue);
draw(shift(Q)*scale(abs(t-1))*unitcircle,dashed+heavygreen);
draw(O--Q);
draw(shift(gQ)*scale(abs(t-1))*unitcircle,dashed+heavygreen);

draw("$|r|$",t*dir(120)--O,blue);
draw("$|1-r|$",gQ--gQ+abs(t-1)*dir(150),heavygreen);

dot(Label("$O$",black),O,SW,red);
dot(Label("$Q$",black),Q,SE,red);
dot(Label("$X_r$",black),t*Q,1.1dir(305),red);
dot(Label("$g(Q)$",black),gQ,NE,red);
dot(Label("$g(X_r)$",black),t*gQ,dir(35),red);