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

size(400);

pair A=0.8dir(210);
pair B=0.8dir(330);
pair C=0.8dir(90);

label("$A$",A,W);
label("$B$",B,E);
label("$C$",C,N);
draw(A--B--C--cycle,StickIntervalMarker(3,2,blue,dotframe(red)));
label("Equilateral Triangle",(0,-0.8));

picture circ;
picture midp;

pair AA=(-1,0);

dot(midp,"$A$",AA,S);
dot(midp,"$B$",-AA,S);
dot(midp,"$M$",(0,0),S);
draw(midp,-AA--AA,StickIntervalMarker(2,2,blue,dotframe(red)));
label(midp,"Midpoint",(0,-0.8));

pair A=0.8dir(140);
pair P=0.4dir(220);
pair Q=0.9dir(305);
pair R=0.8dir(45);

draw(circ,scale(0.8)*unitcircle);
draw(circ,A--(0,0)--R,StickIntervalMarker(2,2,blue,dotframe(red)));
label(circ,"$O$",(0,0),S);
label(circ,"$R$",R,R);
label(circ,"$A$",A,A);
dot(circ,Label("$P$",black),P,W,red);
dot(circ,Label("$Q$",black),Q,E,red);
label(circ,"Circle",(0,-1));

add(shift(2.75,0)*midp);
add(shift(5.5,0.2)*circ);