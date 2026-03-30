settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
%\usepackage[otfmath,theoremfont,trueslanted,largesc]{newpx}
\setmainfont{TeX Gyre Pagella X}
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

