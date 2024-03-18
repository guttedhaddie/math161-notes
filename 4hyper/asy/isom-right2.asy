settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(110);

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
	
void circ(pair p, pair q, pen pen){
	real paral=p.x*q.y-p.y*q.x;
	if(paral==0){draw(p--q);}
	else{
	draw(arc(cent(p,q),rad(p,q),min(degrees(p-cent(p,q)),degrees(q-cent(p,q))),max(degrees(p-cent(p,q)),degrees(q-cent(p,q)))), pen);
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

//filldraw(c,grey+opacity(0.2),white);

pair O=(0,0);
real p=sqrt(5-2*sqrt(6));
real q=sqrt(2-sqrt(3));
pair P=p*dir(0);
pair Q=q*dir(45);

circ(Q,P,heavygreen);
draw(P--(0,0)--Q);



draw(Label("$a$",black),(0,0)--P,blue);
draw(Label("$c$",black),Q--(0,0));
draw(P-(0.02,0)--P+(-0.02,0.02)--P+(0,0.02));
label("$b$",0.45(P+Q)+0.04E);


draw(Label("$\frac\pi 4$",black),arc(O,0.07,0,45),heavygreen);
draw(Label("$\frac\pi 6$",black),arc(Q,0.07,225,256),blue);


dot(P,red);
dot(Q,red);
dot((0,0),red);