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
	
void circ(pair p, pair q,pen pen=black){
	real paral=p.x*q.y-p.y*q.x;
	if(paral==0){draw(p--q,pen);}
	else{
	draw(arc(cent(p,q),rad(p,q),min(degrees(p-cent(p,q)),degrees(q-cent(p,q))),max(degrees(p-cent(p,q)),degrees(q-cent(p,q))),CCW),pen);
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

circ(Q,P,red);
draw("$a$",(0,0)--P,blue);
draw("$b$",Q--(0,0),heavygreen);
draw((0.05,0)--(0.05,0.05)--(0,0.05),red);
label("$c$",0.45(P+Q),red);

draw("$B$",arc(P,0.15,150,180),heavygreen);
draw(Label("$A$",Relative(0.6)),arc(Q,0.27,270,284),blue);

pair R=-P;
pair SS=(1/(p^2*q^2+1))*(-p*(1+q^2),q*(1-p^2));

draw("$b$",arc(cent(SS,R),SS,R,CW),heavygreen);
draw("$a$",R--O,blue);
draw("$c$",O--SS,red);
draw(R+(0.05,0)--R+(0.05,0.05)--R+(-0.001,0.05),red);
draw("$B$",arc(O,0.17,153,180),heavygreen);
draw(Label("$A$",Relative(0.35)),arc(SS,0.21,313,332),blue);

dot("$p$",P,SE);
dot("$iq$",Q,W);
dot("$0$",O,S);
dot("$f(p)$",R,SW);
dot("$f(iq)$",SS,NE);



