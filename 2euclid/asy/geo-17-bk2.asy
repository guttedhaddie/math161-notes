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

size(190);

real a=3;
real x=a*(sqrt(5)-1)/2;

pair A=(0,0);
pair B=(a,0);
pair C=(0,-a);
pair D=(a,-a);
pair E=(0,-a/2);
pair F=(0,x);
pair G=(x,x);
pair H=(x,0);
pair I=(x,-a);

draw(A--B--D--C--F--G--I);
draw(E--B);
label("$A$",A,W);
dot("$B$",B,dir(0));
label("$C$",C,W);
label("$D$",D,dir(0));
label("$E$",E,W);
label("$F$",F,W);
label("$G$",G,dir(0));
label("$H$",H,NE);

