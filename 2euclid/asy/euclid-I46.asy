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

draw(unitsquare);

pair A=(0,0);
pair B=(1,0);
pair C=(1,1);
pair D=(0,1);
draw(A--C,dashed);
draw(B--D,dashed);

dot("$A$",A,SW);
dot("$B$",B,SE);
dot("$C$",C,NE);
dot("$D$",D,NW);
