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
import markers;

size(0,130);

pair A=(0,0.8);
pair B=(2,0);
pair C=(2,1);
pair D=(2,2);

draw(A--B--D--cycle--C);

dot(Label("$A$",black),A,SW,red);
dot(Label("$B$",black),B,SE,red);
dot(Label("$C$",black),C,E,red);
dot(Label("$D$",black),D,NE,red);
