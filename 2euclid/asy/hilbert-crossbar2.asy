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

size(180);

pair A=(0,0);
pair B=(1,0);
pair C=1.5dir(60);
pair D=2dir(25);
pair EE=-1.5B;

draw(C--A--B--C--EE--A);

pair M=0.4EE+0.6C;

draw(A..M..C+(0,0.3){E}..D{dir(25)},blue);
draw(D--1.2D,blue,Arrow);

dot(Label("$A$",black),A,S,red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,NW,red);
dot(Label("$I$",black),D,SE,red);
dot(Label("$D$",black),EE,S,red);
dot(Label("$M$",black),M,SE,red);
