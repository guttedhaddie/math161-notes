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

size(0,120);

pair O=(0,0);
pair A=(2,0.5);
pair B=(1,2.2);

draw(O--A,StickIntervalMarker(1,1,blue,dotframe(red)));
draw(O--B,StickIntervalMarker(1,2,blue,dotframe(red)));
draw(A--B,StickIntervalMarker(1,3,blue,dotframe(red)));
draw(A--A+B,StickIntervalMarker(1,2,blue,dotframe(red)));
draw(B--A+B,StickIntervalMarker(1,1,blue,dotframe(red)));

transform T=reflect(dir(120),O);

draw(T*O--T*A,StickIntervalMarker(1,1,blue,dotframe(red)));
draw(T*O--T*B,StickIntervalMarker(1,2,blue,dotframe(red)));
draw(T*A--T*B,StickIntervalMarker(1,3,blue,dotframe(red)));
draw(T*A--T*(A+B),StickIntervalMarker(1,2,blue,dotframe(red)));
draw(T*B--T*(A+B),StickIntervalMarker(1,1,blue,dotframe(red)));

label("$O$",O,NW);
label("$P$",A,SE);
label("$Q$",B,NW);
label("$R$",A+B,NE);
label("$f(P)$",T*A,SE);
label("$f(Q)$",T*B,NW);
label("$f(R)$",T*(A+B),SW);
