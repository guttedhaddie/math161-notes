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
import animation;

size(210);

picture pic;

animation A;

real p=3;

pair P=(0,0);
pair Q=(1,0);
pair S=(0,1);
pair T=(1,1);
pair X=(p,1);
pair Y=(0,-1/(p-1));
pair Z=(1/p,0);

label(pic,"$P$",P,SW);
label(pic,"$Q$",Q,SE);
draw(pic,Label("$\ell$",Relative(1)),(-0.2,0)--(p+0.2,0));

save();
add(pic);
dot(P);
dot(Q);
A.add();
restore();

dot(pic,P);
dot(pic,Q);

save();
add(pic);
draw(arc(P,Q,S),dashed);
draw(Label("$m$",Relative(0.4)),1.2S--1.2Y,red);
dot("$S$",S,NW,red);
A.add();
restore();

draw(pic,Label("$m$",Relative(0.4)),1.2S--1.2Y);
dot(pic,"$S$",S,NW);

save();
add(pic);
draw(Label("$n$",Relative(0.8)),X+0.2Q--S-0.2Q,red);
dot("$T$",T,NW,red);
A.add();
restore();

draw(pic,Label("$n$",Relative(0.8)),X+0.2Q--S-0.2Q);
dot(pic,"$T$",T,NW);

save();
add(pic);
dot("$X$",X,NW,red);
A.add();
restore();

dot(pic,"$X$",X,NW);

save();
add(pic);
draw(X+0.2unit(X-Y)--Y+0.2unit(Y-X),red);
dot("$Y$",Y,NW,red);
A.add();
restore();

draw(pic,X+0.2unit(X-Y)--Y+0.2unit(Y-X));
dot(pic,"$Y$",Y,NW);

save();
add(pic);
draw(T+0.2unit(T-Y)--Y+0.2unit(Y-T),red);
dot("$Z$",Z,NW,red);
A.add();
restore();

label(A.pdf("controls",multipage=false),fontsize(5));