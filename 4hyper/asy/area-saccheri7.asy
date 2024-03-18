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

picture pic;

size(210);

pair A=(1.4,2.5);
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

pair K=(3.4,2.8);
pair LL=0.5(K+B)+0.1SE;
pair MM=0.5(K+C)+0.1SW;

pair L=intersectionpoint(circc(H,G,I),circc(B,LL,K));
pair M=intersectionpoint(circc(H,G,I),circc(K,MM,C));


//draw(circc(H,G,I));
//draw(circc(B,EE,A),red+linewidth(1));
//draw(circc(A,FF,C),red+linewidth(1));

//draw(B..(0.12,0.62)..H);
//draw(C..(3.83,1)..I);
//path s1=circc(H,G,I)--I..(3.83,1)..C--circc(C,D,B)--B..(0.12,0.62)..H--cycle;
//filldraw(s1,green+opacity(0.2));

pair NN=K+1.4dir(-53);
pair O=B+1.27dir(-50);
dot(pic,NN);
dot(pic,O);
path s3=circc(B,L,K)--NN..M..D..O--cycle;
filldraw(pic,s3,blue+opacity(0.2));

draw(pic,circc(B,L,K),blue+linewidth(1));
draw(pic,circc(K,M,C),blue+linewidth(1));
draw(pic,circc(C,D,B),blue+linewidth(1));


real d=128;
draw(pic,NN+0.1dir(d)--NN+0.1dir(d)+0.1dir(d+90)--NN+0.1dir(d+90)+0.01dir(d));
real d=46;
draw(pic,O+0.1dir(d)--O+0.1dir(d)+0.1dir(d+90)--O+0.1dir(d+90)+0.01dir(d));


dot(pic,D);
dot(pic,M);


add(rotate(130,(0,0))*pic);
dot("$Q$",rotate(130,(0,0))*B,SE);
dot("$P$",rotate(130,(0,0))*C,NE);
dot("$R$",rotate(130,(0,0))*K,SW);

label("$\triangle_2$",(-3.2,2.6),blue);
label("$\mathcal S_2$",(-2.2,1.1),blue);