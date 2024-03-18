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

size(0,100);

pair X=(0,0);
pair Y=(1.7,-0.4);

transform T=shift((2,3));

draw(X--T*X,Arrow(Relative(0.5)));
draw(Y--T*Y,Arrow(Relative(0.5)));
draw(X--Y,StickIntervalMarker(1,1,blue,dotframe(red)));
draw(T*X--T*Y,StickIntervalMarker(1,1,blue,dotframe(red)));

label("$X$",X,W);
label("$f(X)$",T*X,NW);
label("$Y$",Y,SE);
label("$f(Y)$",T*Y,E);
