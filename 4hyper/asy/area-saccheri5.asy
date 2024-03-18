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
import markers;

size(185);

pair A=(1.4,2.5);
pair B=(0,0);
pair C=(4,0);
pair D=(2,0.1);
pair EEE=0.5*(A+B)+0.1SE;
pair FFF=0.5*(A+C)+0.1SW;
pair G=(1.35,1.15);
//dot(EEE);
//dot(FFF);
//dot(G);
pair H=(0.2,1.3);
pair I=(3.8,1.3);

transform T=scale(100)*rotate(90,(0,0));

pair centt(pair a, pair b, pair c){path p=(a+b)/2-T*unit(b-a)--(a+b)/2+T*unit(b-a);
	path q=(c+b)/2-T*unit(b-c)--(c+b)/2+T*unit(b-c);
	return c=intersectionpoint(p,q);
	}

path circc(pair a, pair b, pair c){return arc(centt(a,b,c),a,c);}

pair EE=intersectionpoint(circc(H,G,I),circc(B,EEE,A));
pair FF=intersectionpoint(circc(H,G,I),circc(A,FFF,C));
pair JJ=FF+(0,-0.3);
pair J=intersectionpoint(JJ--I,circc(A,FF,C));

real d=-2;
draw(G+0.1dir(d)--G+0.1dir(d)+0.1dir(d+90)--G+0.1dir(d+90));
real d=190;
draw(I+0.1dir(d)--I+0.1dir(d)+0.1dir(d+90)--I+0.1dir(d+90)+0.01dir(d));
real d=262;
draw(H+0.1dir(d)+0.01dir(d+90)--H+0.1dir(d)+0.1dir(d+90)--H+0.1dir(d+90)+0.01dir(d));


draw(circc(C,D,B));
draw(circc(H,G,I));
draw(circc(B,EE,A));
draw(circc(A,FF,C));

draw(B..(0.12,0.62)..H);
draw(C..(3.83,1)..I);
draw(A..G);
path b=B--(0.38,1.4)..EE..J..(4,1.1)--C;
draw(b);
path d=D--D+(0,5);
pair U=intersectionpoint(d,circc(H,G,I));
pair V=intersectionpoint(d,b);
draw(D--U);
dot("$J$",J,S);
dot("$U$",U,N);
dot("$V$",V,SW);

real d=90;
draw(V+0.08dir(d)--V+0.08dir(d)+0.08dir(d+90)--V+0.08dir(d+86));
real d=183;
draw(U+0.08dir(d)--U+0.08dir(d)+0.08dir(d+90)--U+0.08dir(d+86));
real d=90;
draw(D+0.08dir(d)--D+0.08dir(d)+0.08dir(d+90)--D+0.08dir(d+86));

dot("$A$",A,W);
dot("$B$",B,S);
dot("$C$",C,S);
dot("$D$",D,S);
dot("$E$",EE,S);
dot("$F$",FF,NE);
dot("$G$",G,NW);
dot("$H$",H,NW);
dot("$I$",I,NE);
