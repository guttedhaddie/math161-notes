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

size(90);

transform T=yscale(0.5);

draw(T*unitcircle);


dot(Label("$A$",Black),E,W,Red);
dot(Label("$B$",Black),T*dir(120),SE,Red);
dot(Label("$C$",Black),T*dir(240),NE,Red);
