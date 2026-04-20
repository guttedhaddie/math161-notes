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

size(120);

pair P=dir(36);
pair Q=dir(0);
pair O=(0,0);
pair R=((sqrt(5)-1)/2,0);

draw("$1$",P--O);
draw("$x$",O--R);
draw("$x$",P--R);
draw("$x$",Q--P);
draw("$1-x$",R--Q);


draw("$\alpha$",arc(O,0.2,0,36));
