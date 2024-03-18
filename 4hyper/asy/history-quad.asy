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
import markers;

size(140);

pair A=(0,0);
pair B=(2,0);
pair C=(2,1);
pair D=(0,1);

draw(A--B--C--D--cycle);
draw(A--D,StickIntervalMarker(1,2,heavygreen));
draw(B--C,StickIntervalMarker(1,2,heavygreen));

label("$A$",A,W);
label("$B$",B,E);
label("$C$",C,E);
label("$D$",D,W);
draw(B+0.1unit(C-B)--B+0.1unit(C-B)+0.1unit(A-B)--B+0.1unit(A-B));
draw(A+0.1unit(B-A)--A+0.1unit(B-A)+0.1unit(D-A)--A+0.1unit(D-A));

draw(

//draw(A--C,dashed);
//draw(B--D,dashed);
