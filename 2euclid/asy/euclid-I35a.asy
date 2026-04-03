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

real al=80;
real bet=100;

pair C=(1+2/Tan(al),2);
pair D=(2/Tan(al),2);
draw(A--B--C--D--cycle);

pair EE=(1+2/Tan(bet),2);
pair F=(2/Tan(bet),2);
draw(B--EE--F--A);

dot("$A$",A,SW);
dot("$B$",B,SE);
dot("$C$",C,NE);
dot("$D$",D,NW);
dot("$E$",EE,NE);
dot("$F$",F,NW);