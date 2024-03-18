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
	
void perpp(pair p, pair cc,pen pen=black){
	real dett=p.x*cc.y-p.y*cc.x;
	real A[][]={{2p.x,2p.y},{cc.x,cc.y}};
	real[] b={p.x^2+p.y^2+1,1};
	real[] I=solve(A,b);
	//dot((I[0],I[1]));
	path pp=shift((I[0],I[1]))*scale(sqrt(I[0]^2+I[1]^2-1))*unitcircle;
	pair[] PP=intersectionpoints(pp,shift(cc)*scale(sqrt(cc.x^2+cc.y^2-1))*unitcircle);
	//draw(pp,dashed);
	circ(p,PP[0],pen);
	dot("$Q$",PP[0],SE);
	pair Ed=unit(cent(p,PP[0])-PP[0]);
	pair Edd=rotate(90,(0,0))*Ed;
	draw(PP[0]--PP[0]+0.07Ed--PP[0]+0.07Ed+0.07Edd--PP[0]+0.07Edd);
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

filldraw(unitcircle,0.2grey+0.8*white,white);

real a=2;
path C=shift((a,-1))*scale(a)*unitcircle;
draw(Label("$\ell$",Relative(0.55)),reverse(C),red+linewidth(1));
pair In=(2a/(1+a^2),(a^2-1)/(a^2+1));

pair P=0.6dir(130);

hcirc(P,degrees(In),blue);
hcirc(P,270,blue);
circ(P,dir(15),heavygreen);

pair R=0.45dir(27);
//draw((0,0)--R);
dot("$R$",R,2.4*dir(25));

clip(c);
perpp(P,(a,-1));
dot("$P$",P,NE);
label("$n$",0.4dir(240),blue);
label("$m$",0.55dir(60),blue);

draw("$\mu$",arc(P,0.3,297,320));

