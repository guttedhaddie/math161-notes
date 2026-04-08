settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
\usepackage[svgnames]{xcolor}
");

import graph;

size(120,75,IgnoreAspect);

path ell=-dir(20)--dir(20);

pair A=0.7dir(50);
pair C=0.8dir(180);
pair B=0.5*dir(290);

draw(Label("$\ell$",Relative(0.8)),ell);
draw(A--B--C--cycle);

dot(Label("$A$",black),A,E,red);
dot(Label("$B$",black),B,E,red);
dot(Label("$C$",black),C,W,red);

