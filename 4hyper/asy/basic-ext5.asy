settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(135,0);

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
	circ(p,PP[0],pen);
	dot("$Q$",PP[0],E);
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

//draw(unitcircle);

pair A=(1,1)+dir(190);
pair B=(1,1)+dir(225);
pair R=(1,1)+dir(205);
pair M=(1,1)+dir(215);
pair om=dir(60);

circ(A,B);
circ(R,B,blue+linewidth(1.2));
circ(A,om);
circ(om,B);
circ(om,R,heavygreen);


pair Bom=cent(B,om);
real rBom=rad(B,om);
pair C=Bom+rBom*dir(167);

pair Rom=cent(R,om);
real rRom=rad(R,om);
pair SS=Rom+rRom*dir(270);

circ(M,C);
circ(M,SS);
circ(R,SS,cyan+linewidth(1));
circ(B,C,cyan+linewidth(1));

draw(shift(C)*rotate(78,(0,0))*box((0,0),(0.03,0.03)));

draw(arc(A,0.055,283,312,CCW),red+linewidth(1));
draw(arc(B,0.045,82,130,CCW),magenta+linewidth(1));
draw(arc(R,0.04,13,109,CCW),magenta+linewidth(1));
draw(arc(R,0.04,13+180,109+180,CCW),magenta+linewidth(1));


dot("$\Omega$",om,om,NoFill);
dot("$A$",A,W);
dot("$B$",B,S);
dot("$R$",R,2*dir(150));
dot("$M$",M,SW);
dot("$C$",C,E);
dot("$S$",SS,SW);
draw(arc((0,0),dir(45),dir(95)),dashed);

/*

pair cPom=(2,0);
real anPPom=degrees(P-cPom);
pair Pom(real t){return cPom+(sqrt(3)*Cos(t),sqrt(3)*Sin(t));}

pair cQom=(0,sqrt(4/3));
real anQQom=degrees(Q-cQom);
pair Qom(real t){return cQom+(sqrt(1/3)*Cos(t),sqrt(1/3)*Sin(t));}

pair cPQ=(2,sqrt(4/3));
real anPPQ=degrees(P-cPQ);
real anQPQ=degrees(Q-cPQ);
pair PQ(real t){return cPQ+(sqrt(13/3)*Cos(t),sqrt(13/3)*Sin(t));}

pair cQX=(-2(1+sqrt(3))/3,sqrt(4/3));
real radQX=sqrt(cQX.x^2+cQX.y^2-1);
//pair QX(real t){return cQX+(radQX*Cos(t),radQX*Sin(t));}
//dot(QX(343));

pair X=Qom(290);

draw(arc(P,0.06,-90+anPPom,-91+anPPQ,CCW),magenta+linewidth(1));
draw(arc(Q,0.045,anQPQ-90,-178+anPPom,CW),magenta+linewidth(1));

pair T=PQ(190);
draw(arc(T,0.06,-90+12,-90+47,CCW),red+linewidth(1));
dot("$A$",T,W);
draw(graph(PQ,190,196.2));


pair M=PQ(204);
dot("$M$",M,SW);
pair N=Qom(277.5);
draw(graph(Qom,270,277.5),heavygreen+linewidth(1.2));

dot("$N$",N,N);
circ(M,N);

pair L=Pom(185);
draw(graph(Pom,180,185),heavygreen+linewidth(1.2));
dot("$L$",L,E);
dot("$T$",P,E);
dot("$B$",Q,W);
circ(L,M);
circ(om,T);


draw(arc(P,0.04,-86+anPPQ,265,CCW),cyan+linewidth(1));
draw(arc(P,0.03,-86+anPPQ,265,CCW),cyan+linewidth(1));
draw(arc(Q,0.04,anQPQ+96,-184+anPPom,CCW),cyan+linewidth(1));
draw(arc(Q,0.05,anQPQ+96,-184+anPPom,CCW),cyan+linewidth(1));

draw(Qom(280)--Qom(280)+0.03dir(M-N)--N+0.029dir(M-N));

*/