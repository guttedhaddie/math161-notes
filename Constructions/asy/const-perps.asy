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

size(0,120);

picture pic;

animation A;

pair P=(0,0);
pair Q=(1,0);

label(pic,"$P$",P,SW);
label(pic,"$Q$",Q,SE);

save();
add(pic);
draw(P--Q,red);
A.add();
restore();

draw(pic,P--Q);

save();
add(pic);
draw(shift(P)*unitcircle,red);
A.add();
restore();

draw(pic,shift(P)*unitcircle);

save();
add(pic);
draw(shift(Q)*unitcircle,red);
A.add();
restore();

draw(pic,shift(Q)*unitcircle);
label(pic,"$A$",dir(60),N);
label(pic,"$B$",dir(-60),S);

save();
add(pic);
dot(dir(60),red);
dot(dir(-60),red);
A.add();
restore();

save();
add(pic);
draw(dir(60)--dir(-60),red);
A.add();
restore();


label(A.pdf("controls",multipage=false),fontsize(5));