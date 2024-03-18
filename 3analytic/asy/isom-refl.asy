settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(0,130);

xaxis("$x$",red);
yaxis("$y$",red);


real ph=25;
real th=145;

pair O=(0,0);

draw(O--dir(ph),blue);
draw(O--dir(th-ph),heavygreen);

draw(-0.1dir(th/2)--dir(th/2),dashed);
draw("$\frac\theta 2$",arc(O,0.17,0,th/2),ArcArrow);
draw("$\phi$",arc(O,0.3,0,ph),ArcArrow);

draw("$\frac\theta 2-\phi$",arc(O,0.38,ph,th/2),ArcArrow);
draw("$\frac\theta 2-\phi$",arc(O,0.34,th/2,th-ph),ArcArrow);

draw(dir(ph)--dir(th-ph),StickIntervalMarker(2,2,orange));
draw(shift(0.5dir(ph)+0.5dir(th-ph))*rotate(th/2-90,O)*box((0,0),(0.05,0.05)));

dot(Label("$rS_\phi$",black),dir(ph),dir(ph),red);
dot(Label("$g(X)=rS_{\theta-\phi}$",black),dir(th-ph),N,red);