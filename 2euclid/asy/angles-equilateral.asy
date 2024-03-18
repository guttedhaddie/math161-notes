settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(120);

pair A=(0,0);
pair B=(1,0);
pair C=(2,0);
pair D=(1,1);
pair EE=(1,sqrt(2));
pair F=(1,sqrt(3));

draw(A--C--F--A--D);
draw(EE--A--F--D);
draw(A--C,StickIntervalMarker(2,1,blue));
draw(B--D,StickIntervalMarker(1,1,blue));

dot(Label("$A$",black),A,S,red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,S,red);
dot(Label("$D$",black),D,E,red);
dot(Label("$E$",black),EE,SE,red);
dot(Label("$F$",black),F,E,red);

draw(B+(0,0.1)--B+(-0.1,0.1)--B+(-0.1,0));
