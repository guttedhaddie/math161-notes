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

size(130);

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
	draw(graph(hycirc,0,2pi,operator..));
	dot(f((0,0),c));}
	
draw(scale(0.5)*unitcircle);
dot((9/35,0));
draw(shift((9/35,0))*scale(0.46)*unitcircle,blue);
hycir(1/3*dir(0),0.5);

draw(unitcircle);


