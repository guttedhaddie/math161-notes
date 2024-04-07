settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140);

draw((-5,1)--(5,1));
draw((-5,-1)--(5,-1));

pair A=(-0.5,1);
pair B=-A;
draw(A+0.25(A-B)--B+0.25(B-A));

draw("$\alpha$",arc(A,0.41,180*angle(B-A)/pi,0));
draw("$\beta$",arc(B,0.41,180*angle(A-B)/pi,180));




