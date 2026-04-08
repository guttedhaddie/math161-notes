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

size(120,50,IgnoreAspect);

pair A=(0,0);
pair B=(1,-0.1);
pair C=dir(60);

draw(A--B--C--cycle);

path ell=-0.1(B+C)--0.7*(B+C);

draw(Label("$\ell$",Relative(1)),ell,blue);

pair M=intersectionpoint(ell,B--C);

pair I=0.25A+0.75M;

dot(Label("$A$",black),A,NW,red);
dot(Label("$B$",black),B,NE,red);
dot(Label("$C$",black),C,NW,red);
dot(M,red);
dot(Label("$I$",black),I,SE,red);
