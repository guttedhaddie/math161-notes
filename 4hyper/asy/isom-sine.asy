settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(100);

transform T=rotate(15,(0,0));

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

path pp=arc(T*(a,b),T*A[1],T*B[0],CCW);
path qq=arc(T*(c,d),T*C[0],T*A[1],CCW);
path rr=arc(T*(e,f),T*B[0],T*C[0],CCW);

draw("$a$",reverse(pp));
draw("$b$",reverse(qq));
draw("$c$",reverse(rr));

//draw(unitcircle);
//draw(p);
//draw(q);
//draw(r);

path d=2*A[1]--(-2)*A[1]+0.1E;

pair Q=intersectionpoint(d,r);
draw("$h$",T*Q--T*A[1]);

real an=-10;
draw(T*Q+0.06*dir(an)--T*Q+0.06*dir(an)+0.06*dir(an+90)--T*Q+0.06*dir(an+90));

//dot(A[1]);
//dot(B[0]);
//dot(C[0]);
//dot(Q);

real rad=0.15;
draw("$B$",arc(T*B[0],T*B[0]+rad*dir(130),T*B[0]+rad*dir(157)));
draw("$A$",arc(T*C[0],T*C[0]+0.8rad*dir(1),T*C[0]+0.8rad*dir(42)));