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

size(160,35,IgnoreAspect);

draw((-4,1)--(3.5,1));
draw((-4,-1)--(3.5,-1));

pair A=(-0.5,1);
pair B=-A;

label("$m$",(4,1));
label("$\ell$",(4,-1));
dot("$C$",A,SW);






