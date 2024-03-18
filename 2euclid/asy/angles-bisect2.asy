if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(0,150);

real th=100;

pair A=(0,0);
pair B=(1,0);
pair C=1.5dir(th);
pair EE=unit(C);

draw(2B--A--1.5C,Arrows);

path P=shift(B)*scale(length(B-EE))*unitcircle;
path Q=shift(EE)*scale(length(B-EE))*unitcircle;
pair R[]=intersectionpoints(P,Q);
pair D=R[0];

draw(shift(B)*scale(length(B-EE))*unitcircle);
draw(shift(EE)*scale(length(B-EE))*unitcircle);
draw(A--D);
draw(EE--D--B,StickIntervalMarker(2,1,purple,dotframe(red)));
draw(EE--A--B,StickIntervalMarker(2,2,blue,dotframe(red)));
draw(EE--B);
draw(arc(EE,EE+0.2unit(B-EE),EE+0.2unit(D-EE)),StickIntervalMarker(2,1,heavygreen));
draw(arc(EE,EE+0.2unit(A-EE),EE+0.2unit(B-EE)),StickIntervalMarker(1,1,orange));
draw(arc(B,B+0.2unit(D-B),B+0.2unit(EE-B)),StickIntervalMarker(2,1,heavygreen));
draw(arc(B,B+0.2unit(EE-B),B+0.2unit(A-B)),StickIntervalMarker(1,1,orange));

dot(Label("$A$",black),A,SW,red);
dot(Label("$B$",black),B,SE,red);
dot(Label("$C$",black),C,W,red);
dot(Label("$D$",black),D,NE,red);
dot(Label("$E$",black),EE,W,red);
