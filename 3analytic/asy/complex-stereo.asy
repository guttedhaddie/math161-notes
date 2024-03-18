if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
//settings.prc=false;
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import graph3;

import solids;

size(0,180);

currentprojection=orthographic(4,-2,1);
pen colorb=blue+opacity(0.3);

triple S(pair P){real l=length(P);
return (1/(l^2+1))*(2P.x,2P.y,l^2-1);}

triple pro(triple P){real t=P.z/(P.z-1);
return (0,0,t)+(1-t)*P;}

draw(unitsphere,colorb);


pair PP=(1.5,1);
triple PPP=(PP.x,PP.y,0);

triple Q=unit((1,2,2.5));
draw(Z--Q,dashed);
draw(Q--pro(Q),Arrow3(Relative(0.5)));
dot(Label("$\zeta$",black),Q,Q,red);
dot(Label("$P(\zeta)$",black),pro(Q),-Z,red);


draw(Z--PPP,dashed);
draw(PPP--S(PP),Arrow3(Relative(0.5)));
dot(Label("$P^{-1}(z)$",black),S(PP),S(PP),red);
dot(Label("$z$",black),PPP,-Z,red);

draw(surface(scale(3)*unitcircle),green+opacity(0.3));
draw(unitcircle3);

draw(Z--(-Z),dashed);

dot(Label("$i$",black),Y,-Z,red);
dot(Label("$-i$",black),-Y,-Z,red);
dot(Label("$1$",black),X,-Z,red);
dot(Label("$-1$",black),-X,-Z,red);
dot(Label("$N=P^{-1}(\infty)$",black),Z,Z,red);
dot(Label("$P^{-1}(0)$",black),-Z,-Z,red);
dot(Label("$0$",black),(0,0,0),red);


label("$S^2$",1.2unit((1.3,0.5,-1)),blue);
label("$\mathbb C$",2.8unit((1,0.6,0))-0.15Z,heavygreen);

//xaxis3("$X$",red);
//yaxis3("$Y$",red);
//zaxis3("$Z$",red);