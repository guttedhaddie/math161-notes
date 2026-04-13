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

size(130);

pair A=(0,0);
pair B=(1,0);
pair OO=dir(45);
pair C=(1,1);

draw(arc(A,dir(46.5),dir(43.5),CCW),dashed);
//draw(unitcircle);

draw(A--B,dashed);
draw("$\Sigma_1$",A--0.97*OO,blue+dashed);
draw("$\Sigma_2$",1.03*OO--C,lGreen+dashed);

dot(Label("$A$",black),A,SW,red);
dot(Label("$B$",black),B,SE,red);
dot(Label("$C$",black),C,E,red);
dot(Label("$\mathcal O$",black),OO,N,red,NoFill);
