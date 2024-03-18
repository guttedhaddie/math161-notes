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

size(170,0);

path c=unitcircle;

draw(unitcircle);

pair P=0.5dir(40);
pair O=(0,0);
filldraw(c,grey+opacity(0.2),white);

draw(-unit(P)--unit(P));

dot("$z$",P,SE);
dot("$\Omega=\frac{z}{|z|}$",unit(P),NE);
dot("$\Theta=-\frac{z}{|z|}$",-unit(P),SW);
dot("$0$",O,SE);



