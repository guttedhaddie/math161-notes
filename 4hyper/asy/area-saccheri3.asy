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

pair A=(3,3);
pair B=(0,0);
pair C=(4,0);
pair D=(2,0.1);
pair G=(3.17,1.53);
pair H=(0.2,1.5);
pair I=(3.7,1.6);
pair EEE=(1.5,1.3);
pair FFF=(3.5,1.4);

pair J=(1,2.8);
pair KKK=(0.7,1.5);
pair LLL=(2.3,1.3);

transform T=scale(100)*rotate(90,(0,0));

pair centt(pair a, pair b, pair c){path p=(a+b)/2-T*unit(b-a)--(a+b)/2+T*unit(b-a);
	path q=(c+b)/2-T*unit(b-c)--(c+b)/2+T*unit(b-c);
	return c=intersectionpoint(p,q);
	}

path circc(pair a, pair b, pair c){return arc(centt(a,b,c),a,c);}


pair EE=intersectionpoint(circc(H,G,I),circc(B,EEE,A));
pair FF=intersectionpoint(circc(H,G,I),circc(A,FFF,C));
pair KK=intersectionpoint(circc(H,G,I),circc(B,KKK,J));
pair LL=intersectionpoint(circc(H,G,I),circc(J,LLL,C));
pair MMM=LL+(0,-0.4);
pair MM=intersectionpoint(MMM--I,circc(J,LL,C));

//real d=7;
//draw(G+0.1dir(d)--G+0.1dir(d)+0.1dir(d+90)--G+0.1dir(d+90));
real d=189;
draw(I+0.1dir(d)--I+0.1dir(d)+0.1dir(d+90)--I+0.1dir(d+90));
real d=264.8;
draw(H+0.1dir(d)--H+0.1dir(d)+0.1dir(d+90)--H+0.1dir(d+90));
//real d=3;
//draw(arc(EE,0.2,d,d+40),orange);
//draw(arc(EE,0.2,d+180,d+220),orange);
//real d=110;
//draw(arc(FF,0.12,d,d+77),red);
//draw(arc(FF,0.12,d+180,d+77+180),red);


draw(circc(C,D,B));
//draw(circc(B,EEE,A),blue);
//draw(circc(A,FFF,C),heavygreen);
draw(circc(H,G,I));
draw(circc(B,KK,J),orange);
draw(circc(J,LL,C),red);

//dot("$A$",A,W);
dot("$B$",B,SW);
dot("$C$",C,SE);
dot("$D$",D,S);
//dot("$E$",EE,NW);
//dot("$F$",FF,dir(250));
//dot("$G$",G,NW);
dot("$H$",H,NW);
dot("$I$",I,NE);
dot("$J$",J,W);
dot("$K$",KK,dir(295));
dot("$L$",LL,dir(70));
dot("$M$",MM,dir(260));

draw(B..(0.1,0.62)..H);
draw(C..(3.8,1)..I);
//draw(A..G);
path b=B--(0.45,1.53)..KK..MM..(4,1.1)--C;
draw(b);
path d=D--D+(0,5);
pair U=intersectionpoint(d,circc(H,G,I));
pair V=intersectionpoint(d,b);
draw(D--U);
dot("$U$",U,dir(145));
dot("$V$",V,SW);

real d=90;
draw(V+0.08dir(d)--V+0.08dir(d)+0.08dir(d+90)--V+0.08dir(d+86));
real d=183;
draw(U+0.08dir(d)--U+0.08dir(d)+0.08dir(d+90)--U+0.08dir(d+86));
real d=90;
draw(D+0.08dir(d)--D+0.08dir(d)+0.08dir(d+90)--D+0.08dir(d+86));
pair I=(4,1.1);
real d=180;
draw(I+0.1dir(d)--I+0.1dir(d)+0.1dir(d+90)--I+0.1dir(d+90));
pair H=(0.45,1.53);
real d=252;
draw(H+0.1dir(d)--H+0.1dir(d)+0.1dir(d+90)--H+0.1dir(d+90));