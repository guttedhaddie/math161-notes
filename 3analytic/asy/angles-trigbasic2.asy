settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,85);

real th=45;

pair O=(0,0);
pair A=dir(th);
pair X=(A.x,0);
draw(arc(O,O+0.13unit(X-O),O+0.13unit(A-O)));
draw(arc(A,A+0.13unit(O-A),A+0.13unit(X-A)));

draw("$1$",O--X,red);
draw("$1$",X--A,blue);
draw("$\sqrt 2$",A--O,heavygreen);

draw(X-(0.05,0)--(A.x-0.05,0.05)--(A.x,0.05));