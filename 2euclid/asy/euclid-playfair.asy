settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160);

draw((-4,1)--(3.5,1));
draw((-4,-1)--(3.5,-1));
draw((-0.9,1.8)--(0.75,-1.5));
draw((-4,0.4)--(3.5,0.4+9/7));

pair A=(-0.5,1);
pair B=-A;

label("$\hat\ell$",(4,1));
label("$\ell$",(4,-1));
label("$m$",(4,0.4+9/7));
dot("$P$",A,dir(60));

draw("$\hat\beta$",arc(A,0.51,180*angle(A-B)/pi,180));
draw(arc(A,0.46,180*angle(A-B)/pi,180));
draw("$\gamma$",arc(A,0.41,180*angle((-4,0.4)-A)/pi,180*angle(B-A)/pi,CCW));
draw("$\beta$",arc(B,0.51,180*angle(A-B)/pi,180));
draw(arc(B,0.46,180*angle(A-B)/pi,180));




