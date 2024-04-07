settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(160);

pair A=(0,0);
pair B=(3,0);
pair C=(1,2);
pair EE=(4,2);

pair lline(pair A, pair B, real t){return (1-t)*A+t*B;}

draw("$\ell$",lline(A,B,-0.2)--lline(A,B,1.2),blue);
draw(lline(A,C,-0.2)--lline(A,C,1.2));
draw(lline(B,C,-0.2)--lline(B,C,1.2));
draw("$m$",lline(C,EE,1.2)--lline(C,EE,-0.2),heavygreen);
//draw(lline(EE,B,-0.2)--lline(EE,B,1.2));
draw(C--B,StickIntervalMarker(2,1,orange));
draw(A--EE,dotted,StickIntervalMarker(2,2,orange));
dot(lline(C,B,0.5),orange);

dot(Label("$B$",black),A,dir(300),red);
dot(Label("$A$",black),B,2S,red);
dot(Label("$C$",black),C,2N,red);
dot(Label("$E$",black),EE,dir(120),red);

//draw("$\alpha$",arc(A,lline(A,B,0.1),lline(A,C,0.1)));
//draw("$\alpha$",arc(C,lline(C,EE,0.1),lline(A,C,1.1)));
draw(arc(B,lline(B,C,0.13),lline(B,A,0.13)),StickIntervalMarker(1,1,blue));
draw(arc(C,lline(C,B,0.13),lline(EE,C,0.13)),StickIntervalMarker(1,1,blue));





