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

size(470);

pair A=(0,0);
pair B=(1,0);
pair C=dir(80);
pair D=1.2dir(40);

picture bis;

dot(bis,"$A$",A,S);
dot(bis,"$B$",B,S);
dot(bis,"$C$",C,W);
dot(bis,"$D$",D,N);
draw(bis,A--1.5D,Arrow);
draw(bis,C--B,StickIntervalMarker(2,2,blue));
draw(bis,1.5C--A--1.5B,Arrows);
draw(bis,arc(A,0.2B,0.2C),StickIntervalMarker(2,1,blue));
label(bis,"Bisector",(0.75,-0.6));

picture vert;

pair A=dir(30);
pair B=dir(150);

draw(vert,-A--A);
draw(vert,-B--B);
draw(vert,arc((0,0),0.15A,0.15B));
draw(vert,arc((0,0),-0.15A,-0.15B));
label(vert,"Vertical Angles",(0,-1.1));

picture righ;

pair A=(0,0);
pair B=(1,0);
pair C=dir(90);

dot(righ,"$A$",A,S);
dot(righ,"$B$",B,S);
dot(righ,"$C$",C,W);
dot(righ,"$D$",-B,S);
draw(righ,0.15(B-A)--0.15(B-2A+C)--0.15(-B-2A+C)--0.15(-B));
draw(righ,-1.5B--1.5B,Arrows);
draw(righ,A--1.5C,Arrow);
label(righ,"Right angles",(0,-0.6));

picture supp;

pair A=(0,0);
pair B=(1,0);
pair C=dir(60);
pair D=-B;

dot(supp,"$A$",A,S);
dot(supp,"$B$",B,S);
dot(supp,"$C$",C,NW);
dot(supp,"$D$",D,S);
draw(supp,arc((0,0),0.2B,0.2C));
draw(supp,arc((0,0),0.23B,0.23C));
draw(supp,arc((0,0),0.18C,0.18D));
draw(supp,1.5C-0.5A--A--1.5B-0.5A,Arrows);
draw(supp,A--1.5D,Arrow);
label(supp,"Supplementary angles",(0,-0.6));

add(bis);
add(shift(2.8,0.5)*vert);
add(shift(5.6,0)*supp);
add(shift(8.9,0)*righ);