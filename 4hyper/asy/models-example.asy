settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(170,0);

path c=unitcircle;

draw(unitcircle);
//pair P=(0,1/2);
//pair Q=(1/2,1/3);
pair P=(1/3,1/2);
pair Q=(1/2,0);

//real a=19/36;
//real b=5/4;
real a=5/4;
real b=19/36;
real r=sqrt(a^2+b^2-1);
pair C=(a,b);
pair O=(0,0);

path h=shift(C)*scale(r)*unitcircle;
filldraw(c,0.2grey+0.8white,white);

pair[] SS=intersectionpoints(c,h);

draw(arc(C,SS[0],SS[1]),blue);
draw(arc(C,SS[1],SS[0]),blue+dashed);


draw("$1$",(0,0)--SS[1],dashed);
draw("$r$",SS[1]--(a,b),dashed);
draw((a,b)--(0,0),dashed);
draw(SS[1]-0.1unit(SS[1])--SS[1]-0.1unit(SS[1])+0.1unit((a,b)-SS[1])--SS[1]+0.1unit((a,b)-SS[1]));

dot(Label("$O$",black),(0,0),SW,red);
dot(Label("$P$",black),P,W,red);
dot(Label("$Q$",black),Q,dir(20),red);
dot(Label("$C=(a,b)$",black),(a,b),dir(80),red);



