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

real al=65;
real bet=100;

pair C=(1+2/Tan(al),2);
pair D=(2/Tan(al),2);
draw(A--B--C--D--cycle);

pair EE=(1+2/Tan(bet),2);
pair F=(2/Tan(bet),2);
draw(B--EE--F--A);

path l=A--F;
path m=EE--EE+2*dir(180+al);

pair G=intersectionpoint(l,m);
pair H=G+(1,0);
pair I=H+D-EE;

draw(EE--G--I--D,dashed);

dot("$A$",A,SW);
dot("$B$",B,SE);
dot("$C$",C,N);
dot("$D$",D,N);
dot("$E$",EE,N);
dot("$F$",F,N);
dot("$G$",G,SW);
dot("$H$",H,SW);
dot("$I$",I,SE);