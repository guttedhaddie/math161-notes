settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(120);

real a=2;
real b=0.3;
path p=shift((a,b))*scale(sqrt(a^2+b^2-1))*unitcircle;
real c=-1.5;
real d=2;
path q=shift((c,d))*scale(sqrt(c^2+d^2-1))*unitcircle;
real e=-1;
real f=-2.3;
path r=shift((e,f))*scale(sqrt(e^2+f^2-1))*unitcircle;

pair[] A=intersectionpoints(p,q);
pair[] B=intersectionpoints(p,r);
pair[] C=intersectionpoints(r,q);

path pp=arc((a,b),A[1],B[0],CCW);
path qq=arc((c,d),C[0],A[1],CCW);
path rr=arc((e,f),B[0],C[0],CCW);

draw(pp);
draw(qq);
draw(rr);

//draw(unitcircle);
//draw(p);
//draw(q);
//draw(r);

path d=2*A[1]--(-2)*A[1];

pair Q=intersectionpoint(d,r);
draw(Q--A[1]);

dot("$C$",A[1],E);
dot("$B$",B[0],E);
dot("$A$",C[0],SW);
dot("$Q$",Q,-2*A[1]);

real rad=0.15;
draw("$\gamma$",arc(A[1],A[1]+1.35rad*dir(228),A[1]+1.35rad*dir(243)));
draw("$\beta$",arc(B[0],B[0]+rad*dir(115),B[0]+rad*dir(143)));
draw("$\alpha$",arc(C[0],C[0]+0.8rad*dir(347),C[0]+0.8rad*dir(27)));
draw("$\delta$",arc(A[1],A[1]+rad*dir(244),A[1]+rad*dir(265)));
draw("$\zeta$",arc(Q,Q+0.5rad*dir(336),Q+0.5rad*dir(64)));
draw("$\epsilon$",arc(Q,Q+0.4rad*dir(64),Q+0.4rad*dir(158)));