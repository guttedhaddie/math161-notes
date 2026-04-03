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

size(160);

pair B=(0,0);
real r=0.9;
real th=45;
pair A=r*dir(th);
pair C=(1,0);
pair D=(1.7,0);
pair EE=C+A;

draw(D--B--A--C--EE);
label("$A$",A,dir(20));
label("$B$",B,S);
label("$C$",C,S);
label("$D$",D,S);
label("$E$",EE,dir(20));
draw("$\beta$",arc(B,0.15*dir(0),0.15*dir(th)));
draw("$\tilde\beta$",arc(C,C+0.15*dir(0),C+0.15*dir(th)));
draw("$\alpha$",arc(A,A+0.12*unit(-A),A+0.12*unit(C-A)));
draw("$\tilde\alpha$",arc(C,C+0.12*unit(EE-C),C+0.12*unit(A-C)));
draw("$\gamma$",arc(C,C+0.15*unit(A-C),C+0.15*unit(B-C)));

