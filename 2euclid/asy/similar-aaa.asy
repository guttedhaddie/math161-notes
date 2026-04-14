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

size(140);


pair A=(0,0);
pair B=dir(-10);
pair C=1.4dir(90);

transform T=shift((2.5,0.4))*rotate(145)*scale(0.7)*reflect(A,(1,0));


real r=0.2;
//draw(arc(C,C+1.4r*unit(A-C),C+1.4r*unit(B-C)),blue+linewidth(0.6));
//draw(arc(A,A+r*unit(B-A),A+r*unit(C-A)),lGreen+linewidth(0.6));
//draw(arc(B,B+1.4r*unit(C-B),B+1.4r*unit(A-B)),Brown+linewidth(0.6));

draw(A--B,StickIntervalMarker(1,1,blue,dotframe(red)));
draw(B--C,StickIntervalMarker(1,2,lGreen,dotframe(red)));
draw(C--A,StickIntervalMarker(1,3,Brown,dotframe(red)));


label("$A$",A,W);
label("$B$",B,E);
label("$C$",C,E);

//draw(T*p);
//draw(arc(T*C,T*C+1.2r*unit(T*B-T*C),T*C+1.2r*unit(T*A-T*C)),blue+linewidth(0.6));
//draw(arc(T*A,T*A+0.8r*unit(T*C-T*A),T*A+0.8r*unit(T*B-T*A)),lGreen+linewidth(0.6));
//draw(arc(T*B,T*B+r*unit(T*A-T*B),T*B+r*unit(T*C-T*B)),Brown+linewidth(0.6));
draw(T*A--T*B,StickIntervalMarker(1,1,blue,dotframe(red)));
draw(T*B--T*C,StickIntervalMarker(1,2,lGreen,dotframe(red)));
draw(T*C--T*A,StickIntervalMarker(1,3,Brown,dotframe(red)));

label("$X$",T*A,S);
label("$Y$",T*B,SW);
label("$Z$",T*C,E);




