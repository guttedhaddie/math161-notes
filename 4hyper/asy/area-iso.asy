settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(115,0);

draw(unitcircle,dashed);

draw((1,0)--(0,0)--(0,1));

draw(arc((1,1),1,180,270),blue);

clip(box((-0.2,-0.2),(1.1,1.1)));

dot("$O$",(0,0),SW);
dot((1,0),NoFill);
dot((0,1),NoFill);