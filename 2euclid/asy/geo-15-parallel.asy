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

draw((-4,1)--(4,1));
draw((-4,-1)--(4,-1));
draw((-1,2)--(1,-2));

label("$A$",(-4,1),W);
label("$B$",(4,1),E);
label("$C$",(-4,-1),W);
label("$D$",(4,-1),E);
label("$E$",(-1,2),NW);
label("$F$",(1,-2),SE);
label("$G$",(-1/2,1),dir(60));
label("$H$",(1/2,-1),dir(60));


