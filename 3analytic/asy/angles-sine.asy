settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(100);

pair P=(3,4);

real r=length(P);

draw(box((P.x-0.4,0),(P.x,0.4)));

draw(scale(r)*unitcircle);

draw("$x$",(0,0)--(P.x,0),red);
draw("$y$",(P.x,0)--P,blue);
draw("$r$",P--(0,0),heavygreen);

draw("$\theta$",arc((0,0),1,0,degrees(P)),ArcArrow);

dot(Label("$P$",black),P,dir(P),red);
dot(Label("$O$",black),(0,0),S,red);


