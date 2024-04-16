settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(110);

draw(unitcircle);
pair O=(0,0);
pair P=0.5dir(140);
pair OO=dir(50);
pair Q=OO+0.6(OO-P);

dot(O);

label("$P$",P,S);
label("$Q$",Q,dir(300));
label("$\mathcal O$",OO,dir(250));
draw("$\Sigma_1$",P--OO,blue);
draw("$\Sigma_2$",OO--Q,heavygreen);
dot(P,red);
dot(OO,red);
dot(Q,red);


label("$\mathcal{C}$",dir(340),dir(340));
