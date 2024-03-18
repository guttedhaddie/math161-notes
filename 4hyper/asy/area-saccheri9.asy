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

pair A=(1,2.8);
pair B=(0,0);
pair C=(4,0);
pair D=(2,0.1);
pair G=(1,1.5);
pair H=(0.2,1.5);
pair I=(3.7,1.6);
pair EEE=(0.45,1);
pair FFF=(2.1,1.5);


pair KKK=(1.6,1.4);
pair LLL=(3.5,1.3);
pair L=(3,3);

transform T=scale(100)*rotate(90,(0,0));

pair centt(pair a, pair b, pair c){path p=(a+b)/2-T*unit(b-a)--(a+b)/2+T*unit(b-a);
	path q=(c+b)/2-T*unit(b-c)--(c+b)/2+T*unit(b-c);
	return c=intersectionpoint(p,q);
	}

path circc(pair a, pair b, pair c){return arc(centt(a,b,c),a,c);}


pair EE=intersectionpoint(circc(H,G,I),circc(B,EEE,A));
pair FF=intersectionpoint(circc(H,G,I),circc(A,FFF,C));
pair KK=intersectionpoint(circc(H,G,I),circc(B,KKK,L));
pair LL=intersectionpoint(circc(H,G,I),circc(L,LLL,C));

//real d=7;
//draw(G+0.1dir(d)--G+0.1dir(d)+0.1dir(d+90)--G+0.1dir(d+90));
//real d=189;
//draw(I+0.1dir(d)--I+0.1dir(d)+0.1dir(d+90)--I+0.1dir(d+90));
//real d=264.8;
//draw(H+0.1dir(d)--H+0.1dir(d)+0.1dir(d+90)--H+0.1dir(d+90));
//real d=3;
//draw(arc(EE,0.2,d,d+40),orange);
//draw(arc(EE,0.2,d+180,d+220),orange);
//real d=110;
//draw(arc(FF,0.12,d,d+77),red);
//draw(arc(FF,0.12,d+180,d+77+180),red);


draw(circc(C,D,B));
draw(circc(B,EEE,A),blue);
draw(circc(A,FFF,C),heavygreen);
draw(circc(H,G,I));
draw(circc(B,KK,L),orange);
draw(circc(L,LL,C),red);

dot("$A$",A,W);
dot("$B$",B,SW);
dot("$C$",C,SE);
dot("$D$",D,S);
dot("$E$",EE,NW);
dot("$F$",FF,NE);
dot("$G$",G,S);
dot("$H$",H,NW);
dot("$I$",I,NE);
dot("$L$",L,W);
dot("$K$",KK,NW);
dot(LL,SW);

draw(B..(0.1,0.62)..H);
draw(C..(3.8,1)..I);
draw(A..G);
