settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160);

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
	draw(arc(cent(p,q),rad(p,q),min(degrees(p-cent(p,q)),degrees(q-cent(p,q))),max(degrees(p-cent(p,q)),degrees(q-cent(p,q))),CCW));
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


real p=0.6;
real q=0.85;

pair O=(0,0);
pair P=p*dir(0);
pair Q=q*dir(90);
fill(arc(O,dir(-12),dir(192))--cycle,0.2grey+0.8white);

circ(Q,P);
draw(Label("$a$",black),(0,0)--P,blue);
draw(Label("$b$",black),Q--(0,0),heavygreen);
draw((0.05,0)--(0.05,0.05)--(0,0.05));
label("$c$",0.42(P+Q));

dot(Label("$p$",black),P,SE,red);
dot(Label("$iq$",black),Q,W,red);
dot(Label("$0$",black),O,S,red);

draw(Label("$B$",black),arc(P,0.15,150,180),heavygreen);
draw(Label("$A$",black),arc(Q,0.25,270,284),blue);

pair R=-P;
pair SS=(1/(p^2*q^2+1))*(-p*(1+q^2),q*(1-p^2));

draw(Label("$b$",black),arc(cent(SS,R),SS,R,CW),heavygreen);
draw(Label("$a$",black),R--O,blue);
draw(Label("$c$",black),O--SS);
dot(Label("$f(p)$",black),R,SW,red);
dot(Label("$f(iq)$",black),SS,NE,red);
dot(O,red);
draw(R+(0.05,0)--R+(0.05,0.05)--R+(-0.001,0.05));
draw(Label("$B$",black),arc(O,0.15,153,180),heavygreen);
draw(Label("$A$",black),arc(SS,0.25,311,332),blue);



