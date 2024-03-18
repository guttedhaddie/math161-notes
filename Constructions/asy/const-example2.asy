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


size(0,140,IgnoreAspect);

draw((-1/4,0)--(-1/4,sqrt(10)/4)--(1/8,0));
draw((-1/4,sqrt(10)/4)--(7/8,0));

draw(shift((1/8))*scale(7/8)*unitcircle,blue);
draw(shift((7/8))*scale(11/8)*unitcircle,heavygreen);

dot((1/8,0),blue);
dot((7/8,0),heavygreen);

xaxis("$\mathbb{R}$",-1.1,2.5,red,RightTicks(new real[]{-1,1,2}));
yaxis("$i\mathbb{R}$",-11/8,12/8,red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$-i$",align=W),-1,W,red);

pair z=(-1/4,sqrt(10)/4);

dot("$z_0$",z,1.5dir(160));
dot("$z_1$",(z.x,-z.y),dir(55));