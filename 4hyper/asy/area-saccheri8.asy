settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

picture pic;

size(200);

pair A=(2.1,2.5);
pair B=(0,0);
pair C=(4,0);
pair D=(2,0.1);
pair EEE=0.5*(A+B)+0.1SE;
pair FFF=0.5*(A+C)+0.1SW;
pair G=(1.35,1.15);
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


draw(pic,circc(H,G,I));
draw(pic,circc(B,EE,A),heavygreen+linewidth(1));
draw(pic,circc(A,FF,C),heavygreen+linewidth(1));

draw(pic,B..(0.12,0.62)..H);
draw(pic,C..(3.83,1)..I);
path s1=circc(H,G,I)--I..(3.83,1)..C--circc(C,D,B)--B..(0.12,0.62)..H--cycle;
filldraw(pic,s1,heavygreen+opacity(0.2));
draw(pic,circc(C,D,B),blue+linewidth(1));

real d=190;
draw(pic,I+0.1dir(d)--I+0.1dir(d)+0.1dir(d+90)--I+0.1dir(d+90)+0.01dir(d));
real d=262;
draw(pic,H+0.1dir(d)+0.01dir(d+90)--H+0.1dir(d)+0.1dir(d+90)--H+0.1dir(d+90)+0.01dir(d));

dot(pic,D);
dot(pic,EE);
dot(pic,FF);
dot(pic,H);
dot(pic,I);

add(rotate(35,(0,0))*pic);

dot("$P$",rotate(35,(0,0))*A,NW);
dot("$R$",rotate(35,(0,0))*B,SW);
dot("$Q$",rotate(35,(0,0))*C,SE);

label("$\mathcal S_2$",(1.33,1.7),heavygreen);
label("$\triangle_2$",(0.05,2.3),heavygreen);