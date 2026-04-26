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

size(137);

real th=40;

picture face;
picture ax;

transform T;
T=shift((-2,3.6));

draw(ax,-4dir(th)--7dir(th),dashed);
draw(ax,"$\theta$",arc((0,0),2.5E,2.5dir(th)),ArcArrow);
xaxis(ax,red);
yaxis(ax,red);

draw(face,(-1,0.5)..(0,0.2)..(1,0.5));
draw(face,(-1,0.5)..(0,0)..(1,0.5));
draw(face,(-0.1,0.9)--(0,1.2)--(0.1,0.9));
dot(face,(-0.7,2));
dot(face,(0.7,2),UnFill);


add(ax);
add(T*face);
add(rotate(-th,(0,0))*T*face);
add(reflect((0,0),(1,0))*rotate(-th,(0,0))*T*face);
add(rotate(th,(0,0))*reflect((0,0),(1,0))*rotate(-th,(0,0))*T*face);

pair P=(-2,4.7);
pair Q=reflect((0,0),(1,0))*rotate(-th,(0,0))*P;

draw("1",arc((0,0),length(P),degrees(P),degrees(P)-th),dashed+lGreen,Arrow(Relative(0.5)));

draw(Label("2",Relative(0.3)),rotate(-th,(0,0))*P--Q,dashed+Magenta,Arrow(Relative(0.3)));

draw("3",arc((0,0),length(Q),degrees(Q),degrees(Q)+th),dashed+Blue,Arrow(Relative(0.5)));
