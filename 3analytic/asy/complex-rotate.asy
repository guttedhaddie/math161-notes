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

size(120);


transform T;
T=rotate(135,(0,0));

pair P=(1,2);

draw(P--(0,0)--T*P,dashed);
dot("$z$",P,blue);
dot("$e^{\frac{3\pi i}{4}}z$",T*P,SE,blue);
draw("$\frac{3\pi}4$",arc((0,0),0.13*P,T*P),ArcArrow);

xaxis(-2.1,1.2,red,RightTicks(new real[]{-2,-1,1}));
yaxis(-1.2,2.1,red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$2i$",align=W),2,W,red);
ytick(Label("$-i$",align=W),-1,W,red);

