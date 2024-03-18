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

size(0,120);

pair P=(0,0);
pair Q=(1,0);

label("$P$",P,SW);
label("$Q$",Q,SE);
label("$R$",-Q,SW);

draw(-Q--P--Q);

draw(shift(P)*unitcircle);

draw(dir(90)--dir(-90),red);
