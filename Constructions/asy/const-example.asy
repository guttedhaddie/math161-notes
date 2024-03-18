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

size(180,140,IgnoreAspect);

draw("$a$",(-2,0)--(0,0));
draw("$\frac{\sqrt{10}}4$",(-2,1)--(-2,0));
draw("$r$",(0,0)--(-2,1));

dot("$C$",(0,0),SE);
dot("$z_0$",(-2,1),NW);
dot("$-\frac 14$",(-2,0),SW);

dot((0,-0.2),white);
dot((0,1.2),white);