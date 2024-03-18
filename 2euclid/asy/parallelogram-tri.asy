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

size(180);

pair A=(0,0);
pair B=(-1.3,2);
pair C=(-0.3,2);
pair D=(1,0);
pair EE=(1.5,2);

draw(A--B--C--D--EE--A--D);
draw(C--EE,dashed);
label("A",A,W);
label("B",B,SW);
label("C",C,SW);
label("D",D,E);
label("E",EE,SE);