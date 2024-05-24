settings.tex="pdflatex";

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


pair al=(0.2,0.3);
pair cal=(0.2,-0.3);

pair f(pair z){return (al-z)/(cal*z-1);}

pair A=f((0,0));
real c=sqrt((5-1)/(5+1));
real b=sqrt((3-1)/(3+1));
pair C=f(c*dir(30));
pair B=f(b*dir(0));


circ(A,B,red);
circ(B,C,blue);
circ(C,A,heavygreen);

label("$a$",0.5(B+C),blue);
label("$b$",0.5(A+C)+0.1*dir(110),heavygreen);
label("$\cosh^{-1}3$",0.5(A+B)+0.06*dir(220),red);

draw("$\frac\pi 3$",arc(B,0.06,89,152),heavygreen);
draw(Label("$C$",Relative(0.5)),arc(C,0.1,192,223),red);
draw(Label("$\frac\pi 6$",Relative(0.45)),arc(A,0.13,-2,28),blue);

dot(A);
dot(B);
dot(C);