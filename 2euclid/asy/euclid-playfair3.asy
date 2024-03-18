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
pair P=(1,2);
pair Q=(4,2);

pair lline(pair A, pair B, real t){return (1-t)*A+t*B;}

draw("$\ell$",lline(A,B,-0.2)--lline(A,B,1.2),blue);
draw(lline(A,P,-0.2)--lline(A,P,1.2));
draw(lline(B,P,-0.2)--lline(B,P,1.2));
draw("$m$",lline(P,Q,1.2)--lline(P,Q,-0.2),heavygreen);
//draw(lline(Q,B,-0.2)--lline(Q,B,1.2));
draw(P--B,StickIntervalMarker(2,1,orange));
draw(A--Q,dotted,StickIntervalMarker(2,2,orange));
dot(lline(P,B,0.5),orange);

dot(Label("$B$",black),A,dir(300),red);
dot(Label("$A$",black),B,2S,red);
dot(Label("$P$",black),P,2N,red);
dot(Label("$Q$",black),Q,dir(120),red);

//draw("$\alpha$",arc(A,lline(A,B,0.1),lline(A,P,0.1)));
//draw("$\alpha$",arc(P,lline(P,Q,0.1),lline(A,P,1.1)));
draw(arc(B,lline(B,P,0.13),lline(B,A,0.13)),StickIntervalMarker(1,1,blue));
draw(arc(P,lline(P,B,0.13),lline(Q,P,0.13)),StickIntervalMarker(1,1,blue));





