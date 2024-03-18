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

path c=unitcircle;

pair cent(pair p, pair q){
	real A[][]={{p.x,p.y},{q.x,q.y}};
	real[] b={p.x^2+p.y^2+1,q.x^2+q.y^2+1};
	real[] c=0.5*solve(A,b);
	return (c[0],c[1]);
	}

real rad(pair p, pair q){
	real l=dot(cent(p,q),cent(p,q));
	return sqrt(l-1);
	}
	
void circ(pair p, pair q){
	real paral=p.x*q.y-p.y*q.x;
	if(paral==0){draw(p--q);}
	else{
	draw(arc(cent(p,q),rad(p,q),min(degrees(p-cent(p,q)),degrees(q-cent(p,q))),max(degrees(p-cent(p,q)),degrees(q-cent(p,q)))));
	}
	}
	
void extcirc(pair p, pair q){
	real paral=p.x*q.y-p.y*q.x;
	if(paral==0){draw(unit(p)--(-unit(p))); draw(unit(q)--(-unit(q)));}
	else{
	picture pic;
	draw(pic,shift(cent(p,q))*scale(rad(p,q))*unitcircle);
	clip(pic,unitcircle);
	add(pic);
	}
	}

filldraw(c,0.2grey+0.8white,white);

pair u=0.5*dir(0);
pair v=0.5*dir(90);
real a=5/4;
real r=sqrt(2*a^2-1);

pair C=(a,a);
path hc=Arc(C,v,u);

draw(hc--(0,0)--cycle,blue);

draw(u--(0.9,0),dashed);
draw(u+0.4dir(-30.96)--u-0.4dir(-30.96),dashed);
draw("$\theta$",arc(u,0.25,-30.96,0),heavygreen);
draw(arc(u,0.25,180-30.96,180),heavygreen);

dot(Label("$P$",black),u,S,red);
dot(Label("$Q$",black),v,W,red);
dot(Label("$O$",black),(0,0),SW,red);

