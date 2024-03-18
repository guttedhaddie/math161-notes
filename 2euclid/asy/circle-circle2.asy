settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(150);


draw(arc((0,0),1,-20,200));

pair T=dir(20);
pair B=dir(20+90);
pair P=T+0.7*B;
pair O=(0,0);

draw(P--(0,0)--T);
draw(T+0.9B--T-0.6B);

dot(Label("$T$",black),T,E,red);
dot(Label("$O$",black),(0,0),SW,red);
dot(Label("$P$",black),P,E,red);

label("$\ell$",T-0.6B,S);

real d=0.08;
draw(T+d*unit(O-T)--T+d*unit(O-T)+d*unit(P-T)--T+d*unit(P-T));
