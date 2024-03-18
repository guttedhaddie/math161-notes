if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.prc=false;
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import graph3;

import solids;

size(0,100);

currentprojection=orthographic(4,-1,1);
pen colora=red+opacity(0.3);
pen colorb=blue+opacity(0.3);

pair C=(2,1.5);
real r=0.5;

triple P(real t){return (C.x+r*cos(t),C.y+r*sin(t),0);}
	
triple F3(pair a) {return (a.x)*Z+(1-a.x)*P(a.y);}
surface p3=surface(F3,(0,0),(1,2pi),50);
render render=render(compression=0,merge=true);
draw(p3,colora,render);

draw(unitsphere,colorb,render);

draw(graph(P,0,2pi),linewidth(2)+red+black);

triple Q(real t){return (1/((P(t).x)^2+(P(t).y)^2+1))*(2*P(t).x,2*P(t).y,(P(t).x)^2+(P(t).y)^2-1);}
draw(graph(Q,0,2pi),linewidth(2)+red+black);

for(int n=0; n<10; ++n){
	draw(-0.0Z+1.0*P(2*pi*n/10)--Z,linewidth(0.2));
	}

path3 q=3.2dir(90,190)--arc(O,3.2,90,-38,90,190,Z)--cycle;

draw(unitcircle3,dashed);
draw(surface(q),green+opacity(0.3));