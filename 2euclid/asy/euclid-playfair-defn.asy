settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160,35,IgnoreAspect);

draw((-4,1)--(3.5,1));
draw((-4,-1)--(3.5,-1));

pair A=(-0.5,1);
pair B=-A;

label("$m$",(4,1));
label("$\ell$",(4,-1));
dot("$P$",A,SW);






