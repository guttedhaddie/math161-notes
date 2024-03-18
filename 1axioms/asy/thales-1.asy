settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(0,100);

pair O=(0,0);
pair A=dir(15);

draw(arc(O,A,-A),StickIntervalMarker(1,2,blue,dotframe(red)));
draw(arc(O,-A,A),StickIntervalMarker(1,2,blue,dotframe(red)));
draw(-A--A);
dot(O);

