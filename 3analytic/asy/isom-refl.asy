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

size(0,135);

xaxis("$x$",red);
yaxis("$y$",red);


real ph=25;
real th=145;

pair O=(0,0);

draw(O--dir(ph),Blue);
draw(O--dir(th-ph),lGreen);

draw(-0.1dir(th/2)--dir(th/2),dashed+Magenta);
draw("$\frac\theta 2$",arc(O,0.17,0,th/2),ArcArrow);
draw("$\phi$",arc(O,0.3,0,ph),ArcArrow);

draw("$\frac\theta 2-\phi$",arc(O,0.38,ph,th/2),ArcArrow);
draw("$\frac\theta 2-\phi$",arc(O,0.34,th/2,th-ph),ArcArrow);

draw(dir(ph)--dir(th-ph),StickIntervalMarker(2,2,Brown));
draw(shift(0.5dir(ph)+0.5dir(th-ph))*rotate(th/2-90,O)*box((0,0),(0.05,0.05)));

dot(Label("$X=rS_\phi$",black),dir(ph),dir(80),red);
dot(Label("$g(X)=rS_{\theta-\phi}$",black),dir(th-ph),N,red);