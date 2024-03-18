settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160);

//draw((0,3)--(2,3)--(2,-3)--(0,-3),dashed);
dot("$\overline{z}=2-3i$",(2,-3),NE,blue);
dot("$z=2+3i$",(2,3),NE,blue);

draw(Label("$|z|=\sqrt{13}$",Relative(0.7)),(0,0)--(2,3),dashed);


xaxis(-0.7,4.8,red,RightTicks(new real[]{-2,-1,1,2,3,4}));
yaxis("$y$",-3.2,3.7,red);

labelx("$x$",4.7,S,red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$2i$",align=W),2,W,red);
ytick(Label("$3i$",align=W),3,W,red);
ytick(Label("$-i$",align=W),-1,W,red);
ytick(Label("$-2i$",align=W),-2,W,red);
ytick(Label("$-3i$",align=W),-3,W,red);

draw("$\operatorname{arg}(z)=\tan^{-1}\frac 32$",arc((0,0),0.8dir(0),0.8dir(aTan(1.5))),ArcArrow);
