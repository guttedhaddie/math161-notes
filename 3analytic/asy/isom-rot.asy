settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(0,135);

xaxis("$x$",red);
yaxis("$y$",red);


real th=85;
real ph=40;

pair O=(0,0);

draw(O--dir(ph),blue);
draw(O--dir(ph+th),heavygreen);

dot(Label("$X=rS_\phi$",black),dir(ph),dir(ph+45),red);
dot(Label("$g(X)=rS_{\theta+\phi}$",black),dir(ph+th),N,red);

draw("$\phi$",arc(O,0.15,0,ph),ArcArrow);
draw("$\theta$",arc(O,0.17,ph,ph+th),ArcArrow);
