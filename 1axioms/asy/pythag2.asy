settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(100);

real a=1;
real b=2;

path tri=(0,0)--(a,0)--(a,b)--cycle;

filldraw(scale(a+b)*unitsquare,green);

filldraw(shift(b,0)*tri,yellow);
filldraw(shift(a,b+a)*rotate(180)*tri,yellow);
filldraw(shift(a+b,b)*rotate(90)*tri,yellow);
filldraw(shift(0,a)*rotate(270)*tri,yellow);

