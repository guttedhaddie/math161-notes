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

size(200);

pair P=(0,0);
pair Q=(1,0);
pair R=(2,-1);

transform T=(1,2,0,-1,1,0);
transform TT=(1,2,0,1,1,0);
transform TTT=(1,3,0,1,-1,0);
transform TTTT=(1,3,0,-1,-1,0);

path p=P--Q--R--cycle;

draw(p,linewidth(1));
draw(T*p,Blue+linewidth(1));
draw(TT*p,lGreen+linewidth(1));
draw(TTT*p,Brown+linewidth(1));
draw(TTTT*p,DarkOrchid+linewidth(1));
draw((1,2)--(1,3),black+linewidth(1));

xaxis(0,2.0,red,RightTicks(new real[]{1,2}));
yaxis(-1,4.0,red,LeftTicks(new real[]{-1,0,1,2,3,4}));
//labely("$y$",4.35,red);
//labelx("$x$",2.3,red);

label("$\triangle_a$",(0.85,-0.7));
label("$\triangle_b$",(1.65,2.5));
