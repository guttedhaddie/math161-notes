settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(440);

real s=0.3;

pair A=(1,0);
pair B=(1,2);
pair C=(0,2);
pair D=(0,0);
pair P=(0,2-s);
pair R=(1,2-s);
pair PP=B+2(P-B);
pair PPP=B+3(P-B);
pair PPPP=B+4(P-B);
pair PPPPP=B+5(P-B);

draw(A+0.07dir(90)--A+0.07dir(90)+0.07dir(180)--A+0.07dir(180));
draw(C+0.07dir(-90)--C+0.07dir(-90)+0.07dir(0)--C+0.07dir(0));
draw(D+0.07dir(90)--D+0.07dir(90)+0.07dir(0)--D+0.07dir(0));
draw(R+0.07dir(90)--R+0.07dir(90)-0.07dir(0)--R-0.07dir(0));

path p=A--B;
draw(p);
transform T=shift((-1,0));
draw(T*p);
draw(T*T*p);
draw(T*T*T*p);
draw(T*T*T*T*p);
draw(T*T*T*T*T*D--T*T*T*T*T*p--T*T*T*T*T*C,dashed);

draw(C--(0,PPPPP.y),StickIntervalMarker(5,1,heavygreen));
draw(B--R,StickIntervalMarker(1,1,heavygreen));

transform TT=shift((-1,-s));
path l=P-(1,0)--P+(1,0);
draw(l,StickIntervalMarker(2,1,blue,dotframe(red)));
draw(TT*l,StickIntervalMarker(2,1,blue,dotframe(red)));
draw(TT*TT*l,StickIntervalMarker(2,1,blue,dotframe(red)));
draw(TT*TT*TT*l,StickIntervalMarker(2,1,blue,dotframe(red)));

draw(B--PPPPP,StickIntervalMarker(5,2,magenta,dotframe(red)));
draw(TT*PPPPP--PPPPP,dashed);
draw(PPPP-(0,s)--PPPPP,StickIntervalMarker(1,1,blue,dotframe(red)));
draw((0,PPP.y)--T*(0,PPP.y),dashed,StickIntervalMarker(1,1,blue,dotframe(red)));
draw((0,PPPP.y)--T*T*(0,PPPP.y),dashed,StickIntervalMarker(2,1,blue,dotframe(red)));
draw((0,PPPPP.y)--T*T*T*(0,PPPPP.y),dashed,StickIntervalMarker(3,1,blue,dotframe(red)));


//real sc=0.08;
//path sq=scale(sc)*unitsquare;
//draw(sq);
//draw(shift(B-(sc,0))*sq);
//draw(shift(C-(sc,sc))*sq);
//draw(shift(D-(0,sc))*sq);


draw(A--T*T*T*T*D,StickIntervalMarker(5,1,blue,dotframe(red)));
draw(B--T*T*T*T*C,StickIntervalMarker(5,1,blue,dotframe(red)));
draw(A--B);
//draw(D--A,StickIntervalMarker(1,1,heavygreen,dotframe(red)));

path aa=arc(B,B+0.15unit(P-B),B+0.15unit(A-B),CCW);
path bb=arc(P,P+0.15unit(B-P),P+0.15unit(C-P),CCW);

draw(aa,StickIntervalMarker(1,2,orange));
draw(bb,StickIntervalMarker(1,2,orange));
draw(TT*aa,StickIntervalMarker(1,2,orange));
draw(TT*bb,StickIntervalMarker(1,2,orange));
draw(TT*TT*aa,StickIntervalMarker(1,2,orange));
draw(TT*TT*bb,StickIntervalMarker(1,2,orange));
draw(TT*TT*TT*aa,StickIntervalMarker(1,2,orange));
draw(TT*TT*TT*bb,StickIntervalMarker(1,2,orange));
draw(TT*TT*TT*TT*aa,StickIntervalMarker(1,2,orange));
draw(TT*TT*TT*TT*bb,StickIntervalMarker(1,2,orange));


dot(Label("$A$",black),A,SE,red);
dot(Label("$B$",black),B,NE,red);
dot(Label("$C$",black),C,N,red);
dot(Label("$D$",black),D,S,red);
dot(Label("$R$",black),R,E,red);
dot(Label("$P$",black),P,SE,red);
dot(Label("$P_1$",black),PP,SE,red);
dot(Label("$P_2$",black),PPP,SE,red);
dot(Label("$P_3$",black),PPPP,SE,red);
dot(Label("$P_4$",black),PPPPP,SE,red);
dot(Label("$Q_1$",black),(0,PP.y),E,red);
dot(Label("$Q_2$",black),(0,PPP.y),E,red);
dot(Label("$Q_3$",black),(0,PPPP.y),E,red);
dot(Label("$Q_4$",black),(0,PPPPP.y),E,red);