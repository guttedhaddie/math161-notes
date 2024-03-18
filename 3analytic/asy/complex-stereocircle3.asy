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

size(0,110);

currentprojection=orthographic(4,-1,1);
pen colora=red+opacity(0.3);
pen colorb=blue+opacity(0.3);

pair C=(2,1.5);
real r=0.75;

triple P(real t){return ((1-t)*C.x,t*C.y,0);}
	
triple F3(pair a) {return (a.x)*Z+(1-a.x)*P(a.y);}
surface p3=surface(F3,(-0.3,-0.5),(1,1.5),50);
render render=render(compression=0,merge=true);
draw(p3,colora,render);

draw(unitsphere,colorb,render);

draw(graph(P,-0.5,1.5),linewidth(2)+red+black);

triple Q(real t){return (1/((P(t).x)^2+(P(t).y)^2+1))*(2*P(t).x,2*P(t).y,(P(t).x)^2+(P(t).y)^2-1);}
draw(graph(Q,-5,6),linewidth(2)+red+black);

for(int n=-2; n<=6; ++n){
	draw(-0.3Z+1.3*P(n/4)--Z,linewidth(0.2));
	}


path3 q=3.2dir(90,190)--arc(O,3.2,90,-38,90,190,Z)--cycle;

draw(unitcircle3,dashed);
draw(surface(q),green+opacity(0.3));