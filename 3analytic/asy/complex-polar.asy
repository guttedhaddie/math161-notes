settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(110);

pair z=2dir(60);

dot("$1+\sqrt 3i=2e^{\frac{i\pi}3}$",z,dir(70));
draw(Label("$2$",Relative(0.6)),(0,0)--z);
draw("$\frac\pi 3$",arc((0,0),0.5,0,60),ArcArrow);

xaxis(0,2.4,red,RightTicks(new real[]{0,1,2}));
yaxis(0,red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$0$",align=W),0,W,red);
ytick(Label("$2i$",align=W),2,W,red);