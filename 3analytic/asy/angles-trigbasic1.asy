settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,85);


pair O=(0,0);
pair X=dir(0);
pair A=dir(60);
pair B=dir(180-60);
fill(O--arc(O,0.15X,0.15B)--cycle,orange);
draw(arc(O,X,dir(180)));
draw("$\theta$",arc(O,0.18X,0.18A));
draw(Label("$\pi-\theta$",Relative(0.75),align=3N),arc(O,0.15X,0.15B),orange);
draw("$\theta$",arc(O,0.18B,0.18dir(180)));

draw(-X--O--X);

draw("$\cos\theta$",O--(A.x,0),red+linewidth(1));
draw("$\sin\theta$",(A.x,0)--A,blue+linewidth(1));
draw((B.x,0)--O,red+linewidth(1));
draw((B.x,0)--B,blue+linewidth(1));
draw("$1$",O--A,heavygreen+linewidth(1));
draw(O--B,heavygreen+linewidth(1));
draw((B.x-0.04,0)--(B.x-0.04,0.04)--(B.x,0.04));
draw((A.x-0.04,0)--(A.x-0.04,0.04)--(A.x,0.04));