if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180);

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

pair A=(3,3);
pair B=(0,0);
pair C=(4,0);
pair D=(2,0.1);
pair G=(3.17,1.53);
pair H=(0.2,1.5);
pair I=(3.7,1.6);
pair EEE=(1.5,1.3);
pair FFF=(3.5,1.4);

transform T=scale(100)*rotate(90,(0,0));

pair centt(pair a, pair b, pair c){path p=(a+b)/2-T*unit(b-a)--(a+b)/2+T*unit(b-a);
	path q=(c+b)/2-T*unit(b-c)--(c+b)/2+T*unit(b-c);
	return c=intersectionpoint(p,q);
	}

path circc(pair a, pair b, pair c){return arc(centt(a,b,c),a,c);}


pair EE=intersectionpoint(circc(H,G,I),circc(B,EEE,A));
pair FF=intersectionpoint(circc(H,G,I),circc(A,FFF,C));

real d=7;
draw(G+0.1dir(d)--G+0.1dir(d)+0.1dir(d+90)--G+0.1dir(d+90));
real d=189;
draw(I+0.1dir(d)--I+0.1dir(d)+0.1dir(d+90)--I+0.1dir(d+90));
real d=264.8;
draw(H+0.1dir(d)--H+0.1dir(d)+0.1dir(d+90)--H+0.1dir(d+90));
real d=3;
draw(arc(EE,0.2,d,d+40),orange);
draw(arc(EE,0.2,d+180,d+220),orange);
real d=110;
draw(arc(FF,0.12,d,d+77),red);
draw(arc(FF,0.12,d+180,d+77+180),red);


draw(circc(C,D,B));
draw(circc(B,EEE,A),blue);
draw(circc(A,FFF,C),heavygreen);
draw(circc(H,G,I));

dot("$A$",A,W);
dot("$B$",B,SW);
dot("$C$",C,SE);
dot("$D$",D,S);
dot("$E$",EE,NW);
dot("$F$",FF,dir(250));
dot("$G$",G,NW);
dot("$H$",H,NW);
dot("$I$",I,NE);

draw(B..(0.1,0.62)..H);
draw(C..(3.8,1)..I);
draw(A..G);
