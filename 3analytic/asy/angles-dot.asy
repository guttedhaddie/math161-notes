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

size(110);

pair O=(0,0);
pair A=(2,-0.5);
pair B=(-0.4,2);
pair C=A+B;

draw("$\mathbf{v}-\mathbf{u}$",B--A,NE,Arrow);
draw("$\mathbf v$",O--A,red,Arrow);
draw("$\mathbf u$",O--B,blue,Arrow);

draw("$\theta$",arc(O,0.2unit(A),0.2unit(B)),ArcArrow);