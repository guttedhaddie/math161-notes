settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(150,0);

pair A=(0,0);
pair B=(3,0);
pair C=(2.2,1);
pair G=C+0.2(C-B);

picture two;

draw(C--A);
draw(A--B,blue,StickIntervalMarker(1,2,blue));
draw(B--C,heavygreen,StickIntervalMarker(1,1,heavygreen));
dot(Label("$A$",black),A,S,red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,E,red);
draw(arc(A,A+0.3dir(B-A),A+0.3dir(C-A)),red);
draw(arc(B,B+0.25dir(C-B),B+0.18dir(A-B)),magenta);
draw(arc(B,B+0.28dir(C-B),B+0.22dir(A-B)),magenta);

draw(two,C--A);
draw(two,A--B,blue,StickIntervalMarker(1,2,blue));
//draw(two,B--C,heavygreen);
draw(two,B--G,heavygreen,StickIntervalMarker(1,1,heavygreen));
draw(two,A--G,dashed);
dot(two,Label("$D$",black),A,S,red);
dot(two,Label("$E$",black),B,S,red);
dot(two,Label("$F$",black),C,E,red);
draw(two,arc(A,A+0.3dir(B-A),A+0.3dir(C-A)),red);
draw(two,arc(B,B+0.25dir(C-B),B+0.18dir(A-B)),magenta);
draw(two,arc(B,B+0.28dir(C-B),B+0.22dir(A-B)),magenta);
dot(two,Label("$G$",black),G,NE,red);

add(shift(0,-1.6)*two);