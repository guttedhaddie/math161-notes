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

size(140);

real s=-10;
real t=30;

pair P=(0,0);
pair B=dir(t);
pair A=dir(s);

draw(arc(P,dir(s-15),dir(t+15)));
draw(1.3A--P--1.3B,Arrows);
draw(B--rotate(s,P)*(Cos(t-s),0),dashed);
draw("$\cos\alpha$",P--rotate(s,P)*(Cos(t-s),0),blue);


dot(Label("$P$",P,black),P,SW,red);
dot(Label("$A$",A,black),A,dir(s-50),red);
dot(Label("$B$",B,black),B,dir(t+40),red);

draw("$\alpha$",arc(P,0.15A,0.15B),ArcArrow);
