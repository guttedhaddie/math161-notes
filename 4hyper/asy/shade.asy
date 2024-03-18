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
import x11colors;

size(200);

path p=dir(90)--dir(90+72)--dir(90+2*72)--dir(90+3*72)--dir(90+4*72)--cycle;
fill(p,red);
fill(p^^scale(2)*p,orange+evenodd);
fill(scale(3)*p^^scale(2)*p,yellow+evenodd);
fill(scale(4)*p^^scale(3)*p,green+evenodd);
fill(scale(5)*p^^scale(4)*p,blue+evenodd);
fill(scale(6)*p^^scale(5)*p,Indigo+evenodd);
fill(scale(7.5)*p^^scale(6)*p,Violet+evenodd);

//radialshade(p,yellow,(0,0),0,red,(0,0),1);