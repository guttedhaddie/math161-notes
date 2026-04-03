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

size(0,100);

pair O=(0,0);
pair A=dir(15);

draw(-A--A);
draw(arc(O,A,-A),StickIntervalMarker(1,2,blue,dotframe(red)));
draw(arc(O,-A,A),StickIntervalMarker(1,2,blue,dotframe(red)));
dot(O);

