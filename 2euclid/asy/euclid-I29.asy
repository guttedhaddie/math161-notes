settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160);

path l=(-4,1)--(3.5,1);
path m=(-4,-1)--(3.5,-1);
path n=(-1,1.5)--(1,-1.5);

pair A=intersectionpoint(l,n);
pair B=intersectionpoint(m,n);

draw(l);
draw(m);
draw(n);

label("$m$",(4,1));
label("$\ell$",(4,-1));

draw("$\alpha$",arc(A,0.5,180*angle(B-A)/pi,0));
draw("$\gamma$",arc(A,0.3,180,180*angle(B-A)/pi,CCW));
draw("$\beta$",arc(B,0.4,180*angle(A-B)/pi,180));

label("$n$",(1.3,-1.5));


