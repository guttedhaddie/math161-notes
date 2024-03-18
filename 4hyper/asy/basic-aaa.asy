settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(170);

pair AC=(1.8,1.5);
pair AB=(-1.5,0.8);
pair BC=(0.2,-3);

path pAC=shift(AC)*scale(sqrt(AC.x^2+AC.y^2-1))*unitcircle;
path pAB=shift(AB)*scale(sqrt(AB.x^2+AB.y^2-1))*unitcircle;
path pBC=shift(BC)*scale(sqrt(BC.x^2+BC.y^2-1))*unitcircle;

//draw(pAC);
//draw(pAB);
//draw(pBC);

pair[] A=intersectionpoints(pAB,pAC);
pair[] B=intersectionpoints(pAB,pBC);
pair[] C=intersectionpoints(pBC,pAC);

draw(arc(AB,B[1],A[1]));
draw(arc(BC,C[1],B[1]));

pair G=AB+sqrt(AB.x^2+AB.y^2-1)*dir(320);
pair H=AC+sqrt(AC.x^2+AC.y^2-1)*dir(225);
pair J=AC+sqrt(AC.x^2+AC.y^2-1)*dir(240);
draw(arc(AC,A[1],J));


dot(Label("$A$",black),A[1],NE,red);
dot(Label("$B$",black),B[1],SW,red);
dot(Label("$C=H$?",black),C[1],NE,red);
dot(Label("$G$",black),G,NW,red);
dot(Label("$H$?",black),H,NE,red);
dot(Label("$H$?",black),J,SW,red);


//draw(unitcircle,grey);


