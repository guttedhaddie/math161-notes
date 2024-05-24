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


pair al=(-0.4,0.1);
pair cal=(-0.4,-0.1);

pair f(pair z){return (al-z)/(cal*z-1);}

pair C=f((0,0));
real a=sqrt((2-1)/(2+1));
real b=sqrt((2-1)/(2+1));
pair A=f(b*dir(60));
pair B=f(a*dir(0));


circ(A,B,red);
circ(B,C,blue);
circ(C,A,heavygreen);

label("$\cosh^{-1}2$",0.5(B+C)+0.03S,blue);
label("$\cosh^{-1}2$",0.5(A+C)+0.1*NW,heavygreen);
label("$c$",0.5(A+B)+0.02dir(200),red);

draw(Label("$A$",Relative(0.45)),arc(A,0.05,218,260),blue);
draw("$B$",arc(B,0.06,130,174),heavygreen);
draw(Label("$\frac\pi 3$",Relative(0.5)),arc(C,0.05,0,58),red);

dot(A);
dot(B);
dot(C);