settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(0,100);

pair A=(1,0);
pair B=(0,3);
pair C=-A;

draw(A--B,StickIntervalMarker(1,2,blue,dotframe(red)));
draw(C--B,StickIntervalMarker(1,2,blue,dotframe(red)));
draw(C--A,StickIntervalMarker(2,2,green,dotframe(red)));

draw(arc(A,0.25,180*angle(B-A)/pi,180*angle(C-A)/pi,CCW));
draw(arc(C,0.25,180*angle(B-C)/pi,180*angle(A-C)/pi));

draw(B--(0,0),dashed+green);
//draw((-0.1,0)--(-0.1,0.1)--(0.1,0.1)--(0.1,0),green);