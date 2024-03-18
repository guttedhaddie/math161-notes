settings.tex="pdflatex";

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

real d=-2;
draw(G+0.1dir(d)--G+0.1dir(d)+0.1dir(d+90)--G+0.1dir(d+90));
real d=190;
draw(I+0.1dir(d)--I+0.1dir(d)+0.1dir(d+90)--I+0.1dir(d+90)+0.01dir(d));
real d=262;
draw(H+0.1dir(d)+0.01dir(d+90)--H+0.1dir(d)+0.1dir(d+90)--H+0.1dir(d+90)+0.01dir(d));
real d=-4;
draw(arc(EE,0.15,d,d+66),orange);
draw(arc(EE,0.15,d+180,d+246),orange);
real d=136;
draw(arc(FF,0.17,d,d+45),brown);
draw(arc(FF,0.17,d+180,d+45+180),brown);


draw(circc(C,D,B));
draw(circc(H,G,I));
draw(circc(B,EE,A),StickIntervalMarker(2,1,blue));
draw(circc(A,FF,C),StickIntervalMarker(2,2,heavygreen));

draw(B..(0.12,0.62)..H,red);
draw(C..(3.83,1)..I,red);
draw(A..G,red);

dot("$A$",A,W);
dot("$B$",B,S);
dot("$C$",C,S);
dot("$D$",D,S);
dot("$E$",EE,SE);
dot("$F$",FF,SW);
dot("$G$",G,SE);
dot("$H$",H,NW);
dot("$I$",I,NE);

draw(0.5(A+EE)+0.2W..EE+0.55dir(100)..0.5(H+EE)+0.1N,ArcArrow);
draw(0.5(A+FF)+0.2E..FF+0.6dir(80)..0.5(I+FF)+0.1N,ArcArrow);
