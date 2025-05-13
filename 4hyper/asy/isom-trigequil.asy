settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(115);

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



pair al=(0.1,0.6);
pair cal=(0.1,-0.6);

pair f(pair z){return (al-z)/(cal*z-1);}

pair B=f((0,0));
real cod=3*sqrt(3);
real p=sqrt((cod-1)/(cod+1));
pair C=f(p*dir(-15));
pair A=f(p*dir(15));

circ(A,C,heavygreen);
circ(B,C,blue);
circ(A,B,red);

label("$a$",0.5(B+C)+0.01NE,blue);
label("$b$",0.5(A+C)+0.02NW,heavygreen);
label("$c$",0.5(A+B)+0.12NE,red);


draw("30\textdegree",arc(B,0.08,-18,11),heavygreen);
draw(Label("30\textdegree",Relative(0.35)),arc(C,0.05,72,115),red);
draw(Label("30\textdegree",Relative(0.6)),arc(A,0.05,139,178),blue);


dot(A);
dot(B);
dot(C);