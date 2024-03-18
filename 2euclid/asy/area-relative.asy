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

size(180);

draw((0,0)--(1,0),StickIntervalMarker(5,2,blue,dotframe(red)));
draw((0,-0.15)--(1,-0.15),StickIntervalMarker(7,1,blue,dotframe(red)));

dot(Label("$A$",black),(0,0),N,red);
dot(Label("$B$",black),(1/5,0),N,red);
dot(Label("$C$",black),(0,-0.15),S,red);
dot(Label("$D$",black),(1/7,-0.15),S,red);
