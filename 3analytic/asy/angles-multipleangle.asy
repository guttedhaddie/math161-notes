settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(180,0);

real al=25;
real be=40;
real th=al+be;

pair X=(1,0);
pair O=(0,0);
pair A=dir(al);
pair B=dir(th);

pair D=Cos(be)*dir(al);
pair P=(B.x,D.y);
pair Q=(D.x,0);

draw(arc(O,1,-5,90));
draw("$\alpha$",arc(O,0.15,0,al));
draw("$\beta$",arc(O,0.13,al,th));
draw("$1$",B--O);
draw(O--X);
draw("$\alpha$",arc(D,0.15,180,180+al));
draw("$\alpha$",arc(B,0.15,270,270+al));

pair Dp=dir(al+90);
pair Dl=dir(al);
real d=0.05;
draw(D+d*Dl--D+d*(Dp+Dl)--D+d*Dp);
draw(D--A);
draw(Label("$\cos\beta$",Relative(0.6)),O--D,heavygreen);
draw("$\sin\beta$",D--B,blue);
draw(B--P,blue+dashed);
draw(P--D,dashed);
draw(P+(d,0)--P+(d,d)--P+(0,d));
draw(D--Q,dashed+heavygreen);
draw(Q+(d,0)--Q+(d,d)--Q+(0,d));

draw("$\sin\alpha\cos\beta$",X+(d,0)--(X.x+d,D.y),dashed+heavygreen);
draw("$\cos\alpha\sin\beta$",(X.x+d,D.y)--(X.x+d,B.y),dashed+blue);
draw(X+(0.5d,0)--X+(1.5d,0));
draw((X.x+0.5d,D.y)--(X.x+1.5d,D.y));
draw((X.x+0.5d,B.y)--(X.x+1.5d,B.y));