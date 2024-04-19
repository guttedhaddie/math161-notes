settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(100);

real t1=240;
real t2=290;

pair A=(0,0);
pair B=dir(t1);
pair C=1.2dir(t2);
pair G=1.8dir(t1);
pair H=1.8*1.2dir(t2);

draw(arc(B,B+0.15unit(C-B),B+0.15unit(A-B)),blue);
draw(arc(G,G+0.15unit(C-B),G+0.15unit(A-B)),blue);
draw(arc(C,C+0.17unit(A-C),C+0.17unit(B-C)),heavygreen);
draw(arc(C,C+0.2unit(A-C),C+0.2unit(B-C)),heavygreen);
draw(arc(H,H+0.17unit(A-C),H+0.17unit(B-C)),heavygreen);
draw(arc(H,H+0.2unit(A-C),H+0.2unit(B-C)),heavygreen);

draw(B--C--A--G--H--C);
draw(Label("$\ell$",Relative(1)),B+0.3(B-C)--C+0.3(C-B));

dot(Label("$A$",black),A,E,red);
dot(Label("$B$",black),G,SW,red);
dot(Label("$C$",black),H,SE,red);