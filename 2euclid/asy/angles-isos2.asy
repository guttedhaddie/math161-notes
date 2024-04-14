settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(140);

pair A=(0,2);
pair B=(-0.75,0);
pair C=-B;

label("$A=A'$",A,E);
label("$B=C'$",B,S);
label("$C=B'$",C,S);
draw(B--C);
draw(B--A--C,blue,StickIntervalMarker(2,2,blue,dotframe(red)));

draw(arc(B,B+0.2unit(A-B),B+0.2unit(C-B),CW),heavygreen,StickIntervalMarker(1,1,heavygreen));
draw(arc(C,C+0.2unit(B-C),C+0.2unit(A-C),CW),heavygreen,StickIntervalMarker(1,1,heavygreen));