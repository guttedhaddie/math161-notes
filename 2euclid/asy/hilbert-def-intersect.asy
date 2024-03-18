settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,55);

//dot((0,-1.1),white);

real x=-20;
real y=35;

draw(dir(x)--dir(180+x),Arrows);
draw(dir(y)--dir(180+y),Arrows);

dot("$A$",(0,0),S);

label("$\ell$",1.15dir(x));
label("$m$",1.15dir(y));
