settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(0,150);

xaxis(0,1.15,red,RightTicks(new real[]{0,1}));
yaxis("$y$",0,1.1,red,LeftTicks(new real[]{0,1}));

labelx("$x$",1.15,red);
//labely("$y$",1.15,red);


real th=63;
real ph=19;

pair O=(0,0);

draw(arc(O,1,0,90));

fill(O--arc(O,0.2,0,ph)--cycle,lightblue);
fill(O--arc(O,0.2,th,th+ph)--cycle,lightblue);
fill(O--arc(O,0.2,th-ph,th)--cycle,lightblue);

draw(O--dir(ph),blue);
draw(O--1.3dir(th),Arrow);
draw(O--dir(th+ph),heavygreen);
draw(O--dir(th-ph),heavygreen);

dot(Label("$S_\phi$",blue),dir(ph),dir(ph),red);
dot(Label("$S_\theta$",black),dir(th),dir(15),red);
dot(Label("$S_{\theta+\phi}$",heavygreen),dir(th+ph),0.8dir(th+ph),red);
dot(Label("$S_{\theta-\phi}$",heavygreen),dir(th-ph),0.6dir(th-ph),red);


draw("$\phi$",arc(O,0.35,0,ph),ArcArrow);
draw("$\theta$",arc(O,0.25,0,th),ArcArrow);
//draw("$\phi$",arc(O,0.4,th,th+ph),blue,ArcArrow);
//draw("$\phi$",reverse(arc(O,0.36,th,th-ph)),orange,ArcArrow);
