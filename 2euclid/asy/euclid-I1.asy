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
import markers;

size(140);

pair A=dir(180);
pair B=-A;
pair C=(0,sqrt(3));
draw(shift(A)*scale(2)*unitcircle);
draw(shift(B)*scale(2)*unitcircle);

draw(B--A--C--B,StickIntervalMarker(3,2,blue,dotframe(red)));


label("$A$",A,SW);
label("$B$",B,SE);
label("$C$",C,N);