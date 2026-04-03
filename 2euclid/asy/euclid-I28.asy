settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
%\everydisplay{\Umathoperatorsize\displaystyle=4.5ex}
\usepackage[svgnames]{xcolor}
");

import graph;

size(140);

draw((-5.5,1)--(5.5,1));
draw((-5.5,-1)--(5.5,-1));

pair A=(-0.5,1);
pair B=-A;
draw(A+0.35(A-B)--B+0.2(B-A));

draw(arc(A,0.41,180*angle(A-B)/pi,180));
draw(arc(B,0.41,180*angle(A-B)/pi,180));




