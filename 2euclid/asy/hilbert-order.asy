settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(130);

pair A=(0,0);
pair B=dir(17);
pair C=1.3dir(17);
pair D=1.8dir(17);
pair EE=2.1dir(17);
pair F=3dir(17);

draw(-0.2dir(17)--EE);

dot(Label("$A$",black),A,S,red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,S,red);
dot(Label("$D$",black),D,S,red);
//dot(Label("$E$",black),EE,S,red);
