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

size(140);

pair A=(0,2);
pair B=(-0.75,0);
pair C=-B;
pair D=(0,0.5);
pair M=(0,-0.5);

label("$A$",A,E);
label("$B$",B,W);
label("$C$",C,E);
draw(B--C);
draw(A--M,Arrow);
draw(B--A--C,StickIntervalMarker(2,2,blue,dotframe(red)));

dot(Label("$D$",black),D,red);
dot(Label("$M$",black),(0,0),SE,red);

draw(arc(B,B+0.2unit(A-B),B+0.2unit(C-B),CW),StickIntervalMarker(1,1,blue));
draw(arc(C,C+0.2unit(B-C),C+0.2unit(A-C),CW),StickIntervalMarker(1,1,blue));