settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180,0);

pair B=(0,0);
pair C=(2,0);
pair A=(0.4,1);

path p=(0,0.4)--(2,0.4);


pair D=intersectionpoint(p,A--B);
pair EE=intersectionpoint(p,A--C);


real d=0.15;
pair F=intersectionpoint(A--B,EE--EE+2(-(A-B).y,(A-B).x));
pair G=intersectionpoint(A--C,D--D-2(-(A-C).y,(A-C).x));

pair A1=A+d*unit(A-B);
pair A2=A+d*unit(A-C);
pair E1=A1+EE-F;
pair D1=A2+D-G;

//draw("$h$",E1--A1,dashed+red);
//draw("$k$",A2--D1,dashed+red);
//draw(A1--A--A2,dashed+red);
//draw(EE--E1,dashed+red);
//draw(D--D1,dashed+red);
path eperp=EE--EE+2*I*(A-B);
pair epp=intersectionpoint(A--B,eperp);
path dperp=D--D+2*I*(C-A);
pair dpp=intersectionpoint(A--C,dperp);

draw("$d_1$",(B.x,D.y)--B,dashed+blue);
draw("$d_2$",C--(C.x,EE.y),dashed+blue);

void rtang(real r, pair P, real th, pen pen=red){
	transform T=shift(P)*rotate(th,(0,0));
	draw(T*box((0,0),(r,r)),pen);
}


rtang(0.05,(B.x,D.y),-90,blue);
rtang(0.05,(C.x,EE.y),180,blue);

fill(A--EE--D--cycle,blue+opacity(0.25));
fill(B--EE--D--cycle,heavygreen+opacity(0.3));
fill(C--EE--D--cycle,heavygreen+opacity(0.3));
rtang(0.05,epp,90+degrees(I*(A-B)));
rtang(0.05,dpp,degrees(I*(A-C)),0.65orange+0.35black);
draw(A--EE--D--cycle);
draw(B--EE--D--cycle);
draw(C--EE--D--cycle);

draw(B--C);
draw(Label("$\ell$",Relative(0.9),align=NE),p,blue);
draw("$h$",EE--epp,S,dashed+red);
draw("$k$",D--dpp,dashed+0.65orange+0.35black);

dot(Label("$A$",black),A,1.5dir(170),red);
dot(Label("$B$",black),B,S,red);
dot(Label("$C$",black),C,S,red);
dot(Label("$D$",black),D,dir(300),red);
dot(Label("$E$",black),EE,S,red);
