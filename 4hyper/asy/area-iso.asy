settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
\usepackage[svgnames,x11names]{xcolor}
");

import x11colors;
pen lGreen=rgb("00a000");

import graph;
import markers;

size(115,0);

draw(unitcircle,dashed);

draw((1,0)--(0,0)--(0,1));

draw(arc((1,1),1,180,270),blue);

clip(box((-0.2,-0.2),(1.1,1.1)));

dot("$O$",(0,0),SW);
dot((1,0),UnFill);
dot((0,1),UnFill);