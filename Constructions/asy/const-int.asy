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

size(0,110);

pair P=(0,0);
pair Q=(1,0);

label("$P$",P,SE);
label("$Q$",Q,SE);
label("$Q_1$",2Q,SE);
label("$Q_2$",3Q,SE);
label("$Q_{m-1}$",7Q,SE);
label("$R$",8Q,SE);

draw(P--8Q);

//draw(unitcircle);
draw(shift(Q)*unitcircle);
draw(shift(2Q)*unitcircle);
draw(shift(3Q)*unitcircle,dashed);
draw(shift(6Q)*unitcircle,dashed);
draw(shift(7Q)*unitcircle);


