settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(150,75,IgnoreAspect);

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


pair A=(-1/2,0);
pair B=(1/2,0);
draw(A--B,StickIntervalMarker(2,2,heavygreen,dotframe(red)));

pair BC(real t){return (5/4+3/4*Cos(t),3/4*Sin(t));}
pair AD(real t){return (-5/4+3/4*Cos(t),3/4*Sin(t));}


pair C=BC(140);
pair D=AD(40);
//circ(C,D);
draw(graph(BC,180,140),StickIntervalMarker(1,1,blue,dotframe(red)));
draw(graph(AD,0,40),StickIntervalMarker(1,1,blue,dotframe(red)));

draw((0,0)--(0,0.312));
label("$B$",B,SE);
label("$A$",A,SW);
dot(Label("$M$",black),(0,0),S,red);
dot(Label("$N$",black),(0,0.312),N,red);
label("$C$",C,E);
label("$D$",D,W);
draw(A+(0.04,0)--A+(0.04,0.04)--A+(-0.002,0.04));
draw(B+(-0.04,0)--B+(-0.04,0.04)--B+(0.002,0.04));
draw((0.04,0)--(0.04,0.04)--(0,0.04));
draw((0,0.312)+(-0.04,0.002)--(0,0.312)+(-0.04,-0.04)--(0,0.312)+(0,-0.04));

draw(D..(0,0.312){E}..C,StickIntervalMarker(2,3,orange,dotframe(red)));


draw(arc(C,0.15,206,235),StickIntervalMarker(1,1,purple));
draw(arc(D,0.15,305,334),StickIntervalMarker(1,1,purple));