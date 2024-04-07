settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140);

draw((-5.5,1)--(5.5,1));
draw((-5.5,-1)--(5.5,-1));

pair A=(-0.5,1);
pair B=-A;
draw(A+0.35(A-B)--B+0.2(B-A));

draw(arc(A,0.41,180*angle(A-B)/pi,180));
draw(arc(B,0.41,180*angle(A-B)/pi,180));




