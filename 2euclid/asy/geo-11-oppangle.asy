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

size(125);

draw((-3,-2)--(3,2));
draw((-3,2)--(3,-2));

draw(arc((0,0),0.4,aTan(2/3),180+aTan(-2/3)));
draw(arc((0,0),0.4,180+aTan(2/3),360+aTan(-2/3)));
draw(arc((0,0),0.5,aTan(-2/3),aTan(2/3)));
draw(arc((0,0),0.55,aTan(-2/3),aTan(2/3)));

