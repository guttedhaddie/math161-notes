settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(130);

xaxis(0,4,red,RightTicks(new real[]{},new real[]{0,1,2,3,4}));
yaxis(0,2,red,LeftTicks(new real[]{},new real[]{0,1,2}));
//labelx("$x$",1.6,S,red);

transform T=(3,1,3/5,4/5,4/5,-3/5);


pair P=(1,0);
pair Q=(0,0);
pair R=(0,1);

draw(P--Q,blue+linewidth(1));
draw(R--Q,magenta+linewidth(1));
draw(T*P--T*Q,blue+linewidth(1));
draw(T*R--T*Q,magenta+linewidth(1));

dot(Label("$A$",black),P,SE,blue);
dot(Label("$B$",black),Q,SW,heavygreen);
dot(Label("$C$",black),R,NW,magenta);
//dot(Label("$f(P)$",black),T*P,blue);
//dot(Label("$f(Q)$",black),T*Q,NW,heavygreen);
//dot(Label("$f(R)$",black),T*R,magenta);


dot(T*P,blue);
dot(T*Q,heavygreen);
dot(T*R,magenta);

draw(arc(Q,0.2,0,90),heavygreen,ArcArrow);
draw(arc(T*Q,T*Q+0.2unit(T*P-T*Q),T*Q+0.2unit(T*R-T*Q)),heavygreen,ArcArrow);

draw("$f$",(0.8,0.7)..(2.5,1){dir(0)},Arrow);