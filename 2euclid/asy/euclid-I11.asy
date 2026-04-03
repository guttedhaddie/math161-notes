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

size(0,120);

pair A=(0,0);
pair B=(1,0);
pair C=-B;
pair D=(0,sqrt(3));
draw(A--B);
draw(-2B--2B,dashed);
draw(D--(-D),dashed);
draw(unitcircle);
draw(shift(B)*scale(2)*unitcircle);
draw(shift(C)*scale(2)*unitcircle);

dot("$A$",A,SW);
dot("$B$",B,SE);
dot("$D$",D,N);
dot("$C$",C,SW);
dot((0,-2.5),white);
dot((0,2.5),white);