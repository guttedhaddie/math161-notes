settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(200);
path c=unitcircle;

pair P=dir(170);
pair Q=dir(30);
pair M=0.5(P+Q);

pair A=dir(110);
pair B=dir(55);
pair C=intersectionpoint(A--M+4*(M-A),c);
pair D=intersectionpoint(B--M+4*(M-B),c);

pair X=intersectionpoint(A--D,P--Q);
pair Y=intersectionpoint(B--C,P--Q);

pair AM=intersectionpoint(A--M,X--X+2*I*(C-A));
pair DM=intersectionpoint(B--D,X--X+2*I*(D-B));
pair BM=intersectionpoint(B--M,Y--Y+2*I*(B-D));
pair CM=intersectionpoint(A--C,Y--Y+2*I*(A-C));


//draw(arc(D,D+0.15*unit(B-D),D+0.15*unit(A-D)));
//draw(arc(C,C+0.15*unit(B-C),C+0.15*unit(A-C)));
//draw(arc(A,A+0.15*unit(D-A),A+0.15*unit(C-A)));
//draw(arc(B,B+0.15*unit(D-B),B+0.15*unit(C-B)));


filldraw(D--arc(D,D+0.15*unit(B-D),D+0.15*unit(A-D))--cycle,orange);
filldraw(C--arc(C,C+0.15*unit(B-C),C+0.15*unit(A-C))--cycle,orange);
filldraw(A--arc(A,A+0.12*unit(D-A),A+0.12*unit(C-A))--cycle,magenta);
filldraw(B--arc(B,B+0.12*unit(D-B),B+0.12*unit(C-B))--cycle,magenta);


filldraw(M--arc(M,M+0.15*unit(X-M),M+0.15*unit(D-M))--cycle,brown);
filldraw(M--arc(M,M+0.15*unit(Y-M),M+0.15*unit(B-M))--cycle,brown);
filldraw(M--arc(M,M+0.11*unit(A-M),M+0.11*unit(X-M))--cycle,cyan);
filldraw(M--arc(M,M+0.11*unit(C-M),M+0.11*unit(Y-M))--cycle,cyan);

draw(c);
draw(A--C--B--D--cycle);
draw(P--X);
draw(Label("$x$",Relative(0.45)),X--M,blue+linewidth(1));
draw(Label("$y$",Relative(0.55),align=0.2*I*unit(Y-M)),Y--M,heavygreen+linewidth(1));
draw(Y--Q);

draw(Label("$x_1$",Relative(0.35)),AM--X,dashed);
draw(Label("$x_2$",Relative(0.6),align=0.2(D-B)),X--DM,dashed);
draw(Label("$y_1$",Relative(0.5)),CM--Y,dashed);
draw(Label("$y_2$",Relative(0.55),align=0.2(M-B)),Y--BM,dashed);

dot(Label("$A$",black),A,A,red);
dot(Label("$B$",black),B,B,red);
dot(Label("$C$",black),C,C,red);
dot(Label("$D$",black),D,D,red);
dot(Label("$M$",black),M,2dir(77),red);
dot(Label("$P$",black),P,P,red);
dot(Label("$Q$",black),Q,Q,red);
dot(Label("$X$",black),X,NW,red);
dot(Label("$Y$",black),Y,SE,red);

void rtang(pair PP, real ph, real d=0.04){
	draw(shift(PP)*rotate(ph,(0,0))*box((0,0),(d,d)));
}

rtang(AM,degrees(A-M));
rtang(BM,degrees(M-B));
rtang(CM,degrees(C-M));
rtang(DM,degrees(M-D));
