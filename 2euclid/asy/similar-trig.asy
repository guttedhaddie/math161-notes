settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(200);

picture pic;

real th=40;

pair A=dir(th);
pair B=(0,0);
pair C=dir(0);
pair D=(A.x,0);

pair AA=1.8dir(th);
pair CC=0.6dir(0);
pair DD=(AA.x,0);

draw(D--A--B--C);
draw(D+(-0.05,0)--D+(-0.05,0.05)--D+(0,0.05));

dot(Label("$A$",black),A,NW,red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,S,red);
dot(Label("$D$",black),D,S,red);

draw(arc(B,0.1,0,th));

transform T=shift((1.2,0.5))*rotate(-30,B);

draw(pic,DD--AA--B--CC);
draw(pic,DD+(-0.05,0)--DD+(-0.05,0.05)--DD+(0,0.05));
draw(pic,CC--DD,dashed);
add(T*pic);

dot(Label("$A'$",black),T*AA,NW,red);
dot(Label("$B'$",black),T*B,SW,red);
dot(Label("$C'$",black),T*CC,SW,red);
dot(Label("$D'$",black),T*DD,E,red);

draw(T*arc(B,0.1,0,th));
