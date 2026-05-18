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

size(170,0);

path c=unitcircle;

draw(unitcircle);

pair P=0.5dir(40);
pair O=(0,0);
filldraw(c,grey+opacity(0.2),white);

draw(-unit(P)--unit(P));

dot("$z$",P,SE);
dot("$\Omega=\frac{z}{|z|}$",unit(P),NE,UnFill);
dot("$\Theta=-\frac{z}{|z|}$",-unit(P),SW,UnFill);
dot("$0$",O,SE);



