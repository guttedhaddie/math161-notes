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

pair AB=dir(80);
draw((0,0)--AB,blue,StickIntervalMarker(1,1,blue,dotframe(red)));
dot(Label("$A$",black),(0,0),W,red);
dot(Label("$B$",black),AB,W,red);

pair CD=dir(20);

pair Ap=(0.3,0.1);
draw(Label("$r$",align=NW),Ap+CD--Ap+1.5CD,Arrow);
draw(Ap--Ap+CD,blue,StickIntervalMarker(1,1,blue,dotframe(red)));
dot(Label("$A'$",black),Ap,dir(20-90),red);
dot(Label("$B'$",black),Ap+CD,dir(20-90),red);

