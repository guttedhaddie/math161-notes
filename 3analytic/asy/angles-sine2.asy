if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

pair P=(3,4);

real r=length(P);

draw(scale(r)*unitcircle);

draw("$x$",(0,0)--(P.x,0),red);
draw("$y$",(P.x,0)--P,blue);
draw("$r$",P--(0,0),heavygreen);
draw("$x$",P--(0,P.y),red);
draw("$y$",(0,P.y)--(0,0),blue);

draw("$\theta$",arc((0,0),1,0,degrees(P)),ArcArrow);

draw("$\frac\pi 2-\theta$",arc((0,0),1,degrees(P),90),ArcArrow);

label("$P$",P,dir(P));
label("$O$",(0,0),S);

