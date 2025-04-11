settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(90);

transform T=yscale(0.5);

draw(T*unitcircle);


dot(Label("$A$",black),E,W,red);
dot(Label("$B$",black),T*dir(120),SE,red);
dot(Label("$C$",black),T*dir(240),NE,red);
