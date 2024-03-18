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

size(400);

pair A=(0,0);
pair B=(1.3,0);
pair C=dir(60);
pair D=1.2dir(30);

picture inter;

draw(inter,1.2C--A--1.2B,Arrows);
label(inter,"Interior Point",(0.75,-0.4));
dot(inter,Label("$A$",black),A,S,red);
dot(inter,Label("$B$",black),B,S,red);
dot(inter,Label("$C$",black),C,W,red);
dot(inter,Label("$I$",black),dir(20),NE,red);
//dot(inter,Label("$D_2$",black),0.8dir(35),SW,red);
//dot(inter,Label("$D_3$",black),1.2dir(30),N,red);

picture bis;

draw(bis,A--1.2D,Arrow);
draw(bis,1.2C--A--1.2B,Arrows);
draw(bis,arc(A,0.3B,0.3C),StickIntervalMarker(2,1,blue));
label(bis,"Angle Bisector",(0.75,-0.4));
dot(bis,Label("$A$",black),A,S,red);
dot(bis,Label("$B$",black),B,S,red);
dot(bis,Label("$C$",black),C,W,red);
dot(bis,Label("$D$",black),D,N,red);

picture midp;

pair AA=(-1,0);

dot(midp,"$A$",AA,S);
dot(midp,"$B$",-AA,S);
dot(midp,"$M$",(0,0),S);
draw(midp,-AA--AA,StickIntervalMarker(2,2,blue,dotframe(red)));
label(midp,"Midpoint",(0,-0.4));

add(midp);
add(shift((1.5,0))*inter);
add(shift((3.5,0))*bis);