settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,55);

//dot((0,-1.1),white);


real x=-20;
real y=65;
pair A=0.6dir(y);
pair B=-A;
pair C=1.65dir(40);
pair al=I*(unit(A-B));

draw(dir(x)--dir(180+x),Arrows);
draw(A--B);


label("$\ell$",1.15dir(x));

dot("$A$",A,al);
dot("$B$",B,al);
draw(A--B);
