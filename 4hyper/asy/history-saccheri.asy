settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(170);

pair B=(0,0);
pair C=(2,0);
pair A=(0.5,1);
pair D=(3.2,0);

pair M=(A+C)/2;
pair EE=2M;

draw(C--A--B--C);
draw(EE--C);


label("$M$",M,2dir(70));
label("$A$",A,NW);
label("$B$",B,SW);
label("$C$",C,SE);
label("$E$",EE,NE);

/*
draw(arc(A,0.2,180*angle(B-A)/pi,180*angle(C-A)/pi),StickIntervalMarker(1,3,orange));
draw(arc(C,0.2,180*angle(EE-C)/pi,180*angle(A-C)/pi),StickIntervalMarker(1,3,orange));
draw(arc(M,0.2,180*angle(EE-M)/pi,180*angle(C-M)/pi),StickIntervalMarker(1,2,blue));
draw(arc(M,0.2,180*angle(A-M)/pi,180*angle(B-M)/pi,CCW),StickIntervalMarker(1,2,blue));
draw(arc(B,0.2,180*angle(M-B)/pi,180*angle(A-B)/pi),StickIntervalMarker(1,1,heavygreen));
draw(arc(EE,0.2,180*angle(M-EE)/pi,180*angle(C-EE)/pi,CCW),StickIntervalMarker(1,1,heavygreen));
*/

filldraw(A--arc(A,0.2,180*angle(B-A)/pi,180*angle(C-A)/pi)--cycle,orange);
filldraw(C--arc(C,0.2,180*angle(EE-C)/pi,180*angle(A-C)/pi)--cycle,orange);
filldraw(M--arc(M,0.2,180*angle(EE-M)/pi,180*angle(C-M)/pi)--cycle,blue);
filldraw(M--arc(M,0.2,180*angle(A-M)/pi,180*angle(B-M)/pi,CCW)--cycle,blue);
filldraw(B--arc(B,0.2,180*angle(M-B)/pi,180*angle(A-B)/pi)--cycle,heavygreen);
filldraw(EE--arc(EE,0.2,180*angle(M-EE)/pi,180*angle(C-EE)/pi,CCW)--cycle,heavygreen);
filldraw(B--arc(B,0.23,180*angle(C-B)/pi,180*angle(M-B)/pi)--cycle,cyan);
filldraw(C--arc(C,0.23,180*angle(M-C)/pi,180*angle(B-C)/pi)--cycle,magenta);

draw(B--EE,StickIntervalMarker(2,3,orange,dotframe(red)));
draw(C--A,StickIntervalMarker(2,1,heavygreen,dotframe(red)));
draw(A--B,StickIntervalMarker(1,2,blue,dotframe(red)));
draw(C--EE,StickIntervalMarker(1,2,blue,dotframe(red)));
