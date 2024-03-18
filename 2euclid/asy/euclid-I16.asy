settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160);

pair B=(0,0);
pair C=(2,0);
pair A=(1,1);
pair D=(3,0);

draw(C--A--B--D);

draw("$\alpha$",arc(A,0.1,180*angle(B-A)/pi,180*angle(C-A)/pi));
draw("$\beta$",arc(B,0.15,180*angle(C-B)/pi,180*angle(A-B)/pi));
draw("$\delta$",arc(C,0.1,180*angle(D-C)/pi,180*angle(A-C)/pi));

