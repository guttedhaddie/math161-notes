settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(0,100);

real th=45;

pair A=(0,0);
pair B=(1,0);
pair C=1.3dir(th);
pair EE=unit(C);

draw(1.6B--A--1.2C,Arrows);

path P=shift(B)*scale(length(B-EE))*unitcircle;
path Q=shift(EE)*scale(length(B-EE))*unitcircle;
pair R[]=intersectionpoints(P,Q);
pair D=R[0];

//draw(shift(B)*scale(length(B-EE))*unitcircle);
//draw(shift(EE)*scale(length(B-EE))*unitcircle);
draw(A--D);
draw(EE--D--B,StickIntervalMarker(2,1,purple,dotframe(red)));
draw(EE--A--B,StickIntervalMarker(2,2,blue,dotframe(red)));
draw(EE--B);
draw(arc(EE,EE+0.2unit(B-EE),EE+0.2unit(D-EE)),StickIntervalMarker(2,1,heavygreen));
draw(arc(EE,EE+0.2unit(A-EE),EE+0.2unit(B-EE)),StickIntervalMarker(1,1,orange));
draw(arc(B,B+0.2unit(D-B),B+0.2unit(EE-B)),StickIntervalMarker(2,1,heavygreen));
draw(arc(B,B+0.2unit(EE-B),B+0.2unit(A-B)),StickIntervalMarker(1,1,orange));
draw(arc(A,A+0.2unit(B-A),A+0.2unit(C-A)),StickIntervalMarker(2,1,purple));

dot(Label("$A$",black),A,SW,red);
dot(Label("$B$",black),B,SE,red);
dot(Label("$C$",black),C,NW,red);
dot(Label("$D$",black),D,NE,red);
dot(Label("$E$",black),EE,NW,red);

dot(intersectionpoint(A--D,B--EE),red);