settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(130);

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

void circ(pair p, pair q, pen pen=black){
	real paral=p.x*q.y-p.y*q.x;
	if(paral==0){draw(p--q,pen);}
	else{
	draw(arc(cent(p,q),rad(p,q),min(degrees(p-cent(p,q)),degrees(q-cent(p,q))),max(degrees(p-cent(p,q)),degrees(q-cent(p,q)))),pen);
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
	
void perpp(pair p, pair cc,pen pen=black){
	real dett=p.x*cc.y-p.y*cc.x;
	real A[][]={{2p.x,2p.y},{cc.x,cc.y}};
	real[] b={p.x^2+p.y^2+1,1};
	real[] I=solve(A,b);
	//dot((I[0],I[1]));
	path pp=shift((I[0],I[1]))*scale(sqrt(I[0]^2+I[1]^2-1))*unitcircle;
	pair[] PP=intersectionpoints(pp,shift(cc)*scale(sqrt(cc.x^2+cc.y^2-1))*unitcircle);
	//draw(pp,dashed);
	circ(p,PP[1],pen);
	dot("$Q$",PP[1],E);
	pair Ed=unit(cent(p,PP[1])-PP[1]);
	pair Edd=rotate(90,(0,0))*Ed;
	draw(PP[1]--PP[1]+0.07Ed--PP[1]+0.07Ed+0.07Edd--PP[1]+0.07Edd);
	}

void hcirc(pair Q, real Ed, pen pen=black){
	pair mip=midpoint(Q--dir(Ed));
	real ang=degrees(dir(Ed)-Q);
	path p=mip-100dir(ang+90)--mip+100dir(ang+90);
	path q=dir(Ed)-100dir(Ed+90)--dir(Ed)+100dir(Ed+90);
	pair I=intersectionpoint(p,q);
	real r=arclength(I--dir(Ed));
	draw(shift(I)*scale(r)*unitcircle,pen);
	}
	
filldraw(unitcircle,0.2grey+0.8white,white);

pair P=(0,0);
pair R=dir(60);
pair SS=dir(-60);

circ(R,SS,red);
extcirc(R,P,blue);
extcirc(P,SS,heavygreen);

clip(c);
dot("$P$",P,W);
dot("$\Omega$",R,R,NoFill);
dot("$\Theta$",SS,SS,NoFill);

pair Q=(2-sqrt(3),0);
draw(P--Q); 
dot("$Q$",Q,E);
draw(arc(P,0.1dir(0),0.1dir(60)));

draw(Q+(-0.07,0)--Q+(-0.07,0.07)--Q+(0,0.07));
