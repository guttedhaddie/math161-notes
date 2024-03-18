settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

pair O=(0,0);
pair v=(2,1);

dot("$A$",v,E);
dot("$O$",O,SW);
draw(O--v,blue,Arrow);

pair b=(0,1);
draw(O+b--v+b,heavygreen,Arrow);

pair b=(-1,1.5);
draw(O+b--v+b,heavygreen,Arrow);

pair b=(1,-1);
draw(O+b--v+b,heavygreen,Arrow);

pair b=(1.3,0);
draw(O+b--v+b,heavygreen,Arrow);

pair b=(-1,1.5);
draw(O+b--v+b,heavygreen,Arrow);

pair b=(1,2);
draw(O+b--v+b,heavygreen,Arrow);

xaxis("$x$",-1.2,3.4,red,RightTicks(new real[]{-1,1,2,3}));
yaxis("$y$",-1.2,3.4,red,LeftTicks(new real[]{-1,1,2,3}));
