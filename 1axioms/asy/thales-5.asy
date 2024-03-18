settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(0,100);

real th=58;

pair O=(0,0);
pair A=(1,0);
pair B=dir(th);
pair C=-A;

draw(arc(O,A,C));
draw(A--B--C);

draw(O--A,StickIntervalMarker(1,2,blue,dotframe(red)));
draw(O--C,StickIntervalMarker(1,2,blue,dotframe(red)));
draw(O--B,green,StickIntervalMarker(1,2,blue,dotframe(red)));

draw(arc(A,0.12,180*angle(B-A)/pi,180*angle(C-A)/pi,CCW));
draw("$\beta$",arc(A,0.15,180*angle(B-A)/pi,180*angle(C-A)/pi,CCW));
draw("$\alpha$",arc(C,0.22,180*angle(A-C)/pi,180*angle(B-C)/pi));
draw("$\alpha$",arc(B,0.22,180*angle(C-B)/pi,180*angle(O-B)/pi));
draw(arc(B,0.12,180*angle(O-B)/pi,180*angle(A-B)/pi));
draw("$\beta$",arc(B,0.15,180*angle(O-B)/pi,180*angle(A-B)/pi));

//draw(B--(0,0),dashed+green);
//draw((-0.1,0)--(-0.1,0.1)--(0.1,0.1)--(0.1,0),green);