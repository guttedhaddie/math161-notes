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

size(130);

real th=75;

pair A=(0,0);
pair B=(1,0);
pair D=(-0.2,1.2);
pair C=B+D;

pair F=(-0.7,1.2);
pair EE=B+F;

draw(A--B--C--D--A--F--EE--B);

dot(Label("$A$",black),A,S,red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,N,red);
dot(Label("$D$",black),D,N,red);
dot(Label("$E$",black),EE,N,red);
dot(Label("$F$",black),F,N,red);
