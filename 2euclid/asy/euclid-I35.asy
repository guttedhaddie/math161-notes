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
import markers;

size(0,130);

pair A=(0,0);
pair B=(1,0);

real al=65;
real bet=100;

pair C=(1+2/Tan(al),2);
pair D=(2/Tan(al),2);
draw(A--B--C--D--cycle);

pair EE=(1+2/Tan(bet),2);
pair F=(2/Tan(bet),2);
draw(B--EE--F--A);

path l=A--F;
path m=EE--EE+2*dir(180+al);

pair G=intersectionpoint(l,m);
pair H=G+(1,0);
pair I=H+(1,0);

draw(EE--G--I--D,dashed);

dot("$A$",A,SW);
dot("$B$",B,SE);
dot("$C$",C,N);
dot("$D$",D,N);
dot("$E$",EE,N);
dot("$F$",F,N);
dot("$G$",G,SW);
dot("$H$",H,SE);
dot("$I$",I,SE);