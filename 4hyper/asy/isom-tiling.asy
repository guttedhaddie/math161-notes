settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(190);

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
	
void bigcircs(pair p, pair q, pen pen){
	pair C=cent(p,q);
	real r=rad(p,q);
	path ccc=scale(r)*unitcircle;
	draw(shift(C)*ccc,pen);
	draw(shift(I*C)*ccc,pen);
	draw(shift(-C)*ccc,pen);
	draw(shift(-I*C)*ccc,pen);
	}
	

void bigcircs2(pair p, pair q, pen pen){
	pair C=cent(p,q);
	real r=rad(p,q);
	path ccc=scale(r)*unitcircle;
	draw(shift(C)*ccc,pen);
	draw(shift(I*C)*ccc,pen);
	draw(shift(-C)*ccc,pen);
	draw(shift(-I*C)*ccc,pen);
	draw(shift(C*expi(pi/4))*ccc,pen);
	draw(shift(I*C*expi(pi/4))*ccc,pen);
	draw(shift(-C*expi(pi/4))*ccc,pen);
	draw(shift(-I*C*expi(pi/4))*ccc,pen);
	}
	
void circ(pair p, pair q, pen pen){
	real paral=p.x*q.y-p.y*q.x;
	if(paral==0){draw(p--q);}
	else{
	draw(arc(cent(p,q),rad(p,q),min(degrees(p-cent(p,q)),degrees(q-cent(p,q))),max(degrees(p-cent(p,q)),degrees(q-cent(p,q))),CCW), pen);
	}
	}
	
void extcirc(pair p, pair q, pen pen){
	real paral=p.x*q.y-p.y*q.x;
	if(paral==0){draw(unit(p)--(-unit(p))); draw(unit(q)--(-unit(q)));}
	else{
	picture pic;
	draw(pic,shift(cent(p,q))*scale(rad(p,q))*unitcircle,pen);
	clip(pic,unitcircle);
	add(pic);
	}
	}

fill(c,0.2grey+0.8white);

pair O=(0,0);
real p=sqrt(5-2*sqrt(6));
real q=sqrt(2-sqrt(3));
pair P=p*dir(0);
pair Q=q*dir(45);

extcirc(Q,conj(Q),heavygreen);
extcirc(Q,-conj(Q),heavygreen);
extcirc(-Q,conj(Q),heavygreen);
//draw(arc(cent(-P,-conj(Q)),-Q,-conj(Q)),heavygreen);
extcirc(-P,-conj(Q),heavygreen);


pair f(pair z){return (-2*P-(1+P^2)*z)/(-2*P*z-1-P^2);}
pair g(pair z){return (-2*I*P-(1+P^2)*z)/(2*I*P*z-1-P^2);}

real th=60;

pair T(pair al, pair z){return (al-z)/(conj(al)*z-1);}
pair Tinv(pair al, pair z){return (al+z)/(conj(al)*z+1);}
pair R(pair z){return rotate(th,(0,0))*z;}
pair Ral(pair al, pair z){return Tinv(al,R(T(al,z)));}


draw(P--(0,0)--Q);
draw(O--(-P),blue+dashed);
draw(p*dir(270)--p*dir(90),blue+dashed);

draw((0,0)--P,blue);
draw(Q--(0,0));
draw(-Q--(0,0),dashed);
draw(-conj(Q)--conj(Q),dashed);

pair Q1=f(Q);
pair cQ1=f(conj(Q));
pair Q2=Ral(Q,Q1);
pair cQ2=Ral(Q,cQ1);
pair Q3=Ral(Q,Q2);
pair cQ3=Ral(Q,cQ2);
pair Q4=Ral(Q,Q3);
pair cQ4=Ral(Q,cQ3);




pair R1=f(f(conj(Q)));
pair cR1=conj(R1);
pair R2=Ral(f(Q),R1);
pair cR2=Ral(f(Q),cR1);
pair R3=Ral(f(Q),R2);
pair cR3=Ral(f(Q),cR2);
pair R4=Ral(f(Q),R3);
pair cR4=Ral(f(Q),cR3);


bigcircs(Q,conj(Q),heavygreen);
bigcircs(Q,Q1,heavygreen);
bigcircs(cQ1,Q1,heavygreen);
bigcircs(Q1,cQ2,heavygreen);
bigcircs(cQ2,Q2,heavygreen);
bigcircs(Q2,cQ3,heavygreen);
bigcircs(cQ3,Q3,heavygreen);
bigcircs(Q3,cQ4,heavygreen);
bigcircs(cQ4,Q4,heavygreen);
bigcircs(R1,cR1,heavygreen);
bigcircs(cR1,R2,heavygreen);
bigcircs(R2,cR2,heavygreen);
bigcircs(cR2,R3,heavygreen);
bigcircs(R3,cR3,heavygreen);
bigcircs(cR3,R4,heavygreen);
bigcircs(R4,cR4,heavygreen);

bigcircs(R1,conj(R2),heavygreen);
bigcircs(conj(R2),conj(cR2),heavygreen);
bigcircs(conj(cR2),conj(R3),heavygreen);
bigcircs(conj(R3),conj(cR3),heavygreen);
bigcircs(conj(cR3),conj(R4),heavygreen);
bigcircs(conj(R4),conj(cR4),heavygreen);

fill(arc(O,0.07,0,45)--(0,0)--cycle,heavygreen);
fill(arc(Q,0.07,225,256)--Q--cycle,blue);
draw(P+0.04dir(180)--P+0.04dir(180)+0.04dir(90)--P+0.04dir(90));


dot(P,red);
dot(Q,red);
dot((0,0),red);

clip(c);