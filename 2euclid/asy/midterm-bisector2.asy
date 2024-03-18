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

pair A=(-1,0);
pair B=(1,0);
pair D=(1.2,2.5);
pair C=(-1.2,2.5);

pair M=intersectionpoint(A--D,B--C);

pair NN=(0,0.5);
pair P=(0,0);

draw(M--A--B--M--NN--B);
draw(A--NN--P);

draw(arc(A,A+0.2*unit(B-A),A+0.2*unit(D-A)));
draw(arc(B,B+0.2*unit(C-B),B+0.2*unit(A-B)));
draw(arc(A,A+0.3*unit(B-A),A+0.3*unit(NN-A)));
draw(arc(B,B+0.3*unit(NN-B),B+0.3*unit(A-B)));

dot("$A$",A,SW);
dot("$B$",B,SE);
dot("$P$",P,S);
dot("$N$",NN,NE);
dot("$M$",M,2N);




