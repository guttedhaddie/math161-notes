settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180);

path c=unitcircle;

pair cent(pair p, pair q){
	real A[][]={{2p.x,2p.y},{2q.x,2q.y}};
	real[] b={p.x^2+p.y^2+1,q.x^2+q.y^2+1};
	real[] c=solve(A,b);
	return (c[0],c[1]);
	}

real rad(pair p, pair q){
	real l=dot(cent(p,q),cent(p,q));
	return sqrt(l-1);
	}

path circ(pair p, pair q){
	real paral=p.x*q.y-p.y*q.x;
	if(paral==0){return p--q;}
	else{
	return arc(cent(p,q),rad(p,q),min(degrees(p-cent(p,q)),degrees(q-cent(p,q))),max(degrees(p-cent(p,q)),degrees(q-cent(p,q))));
	}
	}

void extcirc(pair p, pair q, pen pen){
	real paral=p.x*q.y-p.y*q.x;
	if(paral==0){draw(unit(p)--(-unit(p)),pen); draw(unit(q)--(-unit(q)),pen);}
	else{
	picture pic;
	draw(pic,shift(cent(p,q))*scale(rad(p,q))*unitcircle,pen);
	clip(pic,unitcircle);
	add(pic);
	}
	}
	

pair f(pair z, pair alp, pair bet=dir(0)){
	pair calp=(alp.x,-alp.y);
	return bet*(z-alp)/(calp*z-1);}

pair ci(real del, real t){
	real r=tanh(del/2);
	return (r*cos(t),r*sin(t));}

path hycirp(pair c, real del){
	pair hycirc(real t){return f(ci(del,t),c);}
	return graph(hycirc,0,2pi,operator..);}
	
real dis(pair p, pair q){
	real x=2*(arclength(p--q))^2/((1-(arclength((0,0)--p))^2)*(1-(arclength((0,0)--q))^2));
	return acosh(1+x);}

filldraw(unitcircle,grey+opacity(0.2),white);

pair P=0.85dir(100);

pair A=(0,-0.2);
pair AA=(0.7,0.4);
//draw(circ(A,AA));
pair[] B=intersectionpoints(hycirp(P,dis(A,P)),circ(A,AA));


//draw(circ(B[0],B[1]),blue);
pair[] Q=intersectionpoints(hycirp(A,dis(A,B[0])),hycirp(B[0],dis(A,B[0])));
pair M=intersectionpoint(circ(Q[0],Q[1]),circ(A,B[0]));


extcirc(A,B[0],red);
extcirc(P,Q[0],orange);

draw(hycirp(A,dis(A,B[0])),heavygreen+dashed);
draw(hycirp(P,dis(A,P)),blue+dashed);
draw(hycirp(B[0],dis(A,B[0])),heavygreen+dashed);


draw(circ(A,P),blue);
draw(circ(B[0],P),blue);
draw(circ(A,Q[0]),heavygreen);
draw(circ(B[0],Q[0]),heavygreen);
draw(circ(A,Q[1]),heavygreen);
draw(circ(B[0],Q[1]),heavygreen);
dot(Label("$P$",black),P,W,blue);
dot(Label("$B$",black),B[0],1.2E,heavygreen);
dot(Label("$A$",black),A,S,heavygreen);
dot(Label("$Q$",black),Q[1],2W,orange);
dot(Label("$R$",black),Q[0],S,orange);
dot(Label("$M$",black),M,W);

label("$\ell$",0.6dir(235),red);
label("$m$",0.9dir(343),orange);

