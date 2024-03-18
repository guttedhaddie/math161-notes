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

size(120);

real al=160;
real be=45;
pair O=(0,0);

draw(unitcircle);
draw(O--dir(0),dashed);

draw("$\mathbf{a}$",O--dir(al),Arrow);
draw("$\mathbf{b}$",O--dir(be),NW,Arrow);
//label("$(\cos\alpha,\sin\alpha)$",dir(al),dir(al));
//label("$(\cos\beta,\sin\beta)$",dir(be),dir(be));

draw("$\alpha$",arc((0,0),0.2,0,al),ArcArrow);
draw("$\beta$",arc((0,0),0.3,0,be),ArcArrow);



