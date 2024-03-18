settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(110);

pair O=(0,0);
pair A=(2,-0.5);
pair B=(-0.4,2);
pair C=A+B;

draw("$\mathbf{v}+\mathbf{w}$",O--C,dashed,Arrow);
draw("$\mathbf v$",O--A,red,Arrow);
draw("$\mathbf v$",B--C,red,Arrow);
draw("$\mathbf w$",O--B,blue,Arrow);
draw("$\mathbf w$",A--C,blue,Arrow);


label("$O$",O,SW);
