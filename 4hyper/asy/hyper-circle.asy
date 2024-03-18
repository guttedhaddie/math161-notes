settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140);

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
	
void circ(pair p, pair q, pen pen=black){
	real paral=p.x*q.y-p.y*q.x;
	if(paral==0){draw(p--q);}
	else{
	draw(arc(cent(p,q),rad(p,q),min(degrees(p-cent(p,q)),degrees(q-cent(p,q))),max(degrees(p-cent(p,q)),degrees(q-cent(p,q)))),pen);
	}
	}
	
void extcirc(pair p, pair q, pen pen=black){
	real paral=p.x*q.y-p.y*q.x;
	if(paral==0){draw(unit(p)--(-unit(p))); draw(unit(q)--(-unit(q)));}
	else{
	picture pic;
	draw(pic,shift(cent(p,q))*scale(rad(p,q))*unitcircle,pen);
	clip(pic,unitcircle);
	add(pic);
	}
	}
	
void perpp(pair p, pair c){
	real dett=p.x*c.y-p.y*c.x;
	real A[][]={{2p.x,2p.y},{c.x,c.y}};
	real[] b={p.x^2+p.y^2+1,-2};
	real[] I=solve(A,b);
	//return (I[0],I[1]);
	circ((I[0],I[1]),p);
	}
	
void tri(pair P, pair Q, pair R){
	circ(P,Q);
	circ(Q,R);
	circ(R,P);
	}
	
	
real l=0.4;
real th=30;
pair alp=l*dir(th);
pair calp=l*dir(-th);
pair bet=dir(0);

pair f(pair z, pair alp, pair bet=dir(0)){
	pair calp=(alp.x,-alp.y);
	return bet*(z-alp)/(calp*z-1);}

pair ci(real r,real t){return (r*cos(t),r*sin(t));}

void hycir(pair c, real r){
	pair hycirc(real t){return f(ci(r,t),c);}
	draw(graph(hycirc,0,2pi,operator..),blue);
	dot(f((0,0),c),red);}
	

filldraw(unitcircle,0.2grey+0.8white,white);
	
for(int i=1; i<=5; ++i){
	hycir(0.85*dir(50),(i+2)/10);}
	
hycir(0.9*dir(300),0.9);
hycir(0.2*dir(100),0.1);
hycir(0.5*dir(170),0.3);

real r=0.3;
pair alp=0.5*dir(170);
pair P=f((0,0),alp);
pair hycirc(real t){return f(ci(r,t),P);}


for(int i=-4; i<5; ++i){
	circ(P,hycirc(0.01+pi*i/11),heavygreen);
	circ(hycirc(pi+0.01+pi*i/11),P,heavygreen);
	}
circ(P,hycirc(0.01+pi*5/11),heavygreen);
circ(P,hycirc(0.01-pi*5/11),heavygreen);

dot(P,red);



