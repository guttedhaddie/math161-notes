settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

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
	
fill(unitcircle,0.2grey+0.8white);

pair P=(-3/10,4/10);
pair R=(-1,0);
pair SS=(3/5,-4/5);
pair TT=-SS;

circ(R,SS,red);
extcirc(R,P,blue);
extcirc(P,SS,heavygreen);
extcirc(R,-SS,orange);

clip(c);
dot("$P$",P,E);
dot("$\Omega$",R,W,NoFill);
dot("$\Theta$",SS,SS,NoFill);
dot("$\Xi$",-SS,-SS,NoFill);

real l=-29+2*sqrt(117);
pair PPP=(93l/1865,26l/1865);

dot("$Q$",PPP,dir(-70));

extcirc(PPP,P,black);

write(PPP.x);
write(PPP.y);
write(acosh(1+2((PPP.x-P.x)^2+(PPP.y-P.y)^2)/((1-(PPP.x^2+PPP.y^2))*(1-(P.x^2+P.y^2)))));

//perpp(P,(-1,-2));