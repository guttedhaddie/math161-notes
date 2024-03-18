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

draw((-1,0)--(0.7,0));

real th=130;
pair P=(-0.8,0.7);

draw((0.7,0)--(0,0)--P--(-1,0)--(0,0));
label("$A$",P,N);
label("$B$",(-1,0),S);
label("$C$",(0,0),S);
label("$D$",(0.7,0),S);

