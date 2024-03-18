settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180,120,IgnoreAspect);

real h=0.03;

transform ta=xscale(1/3);
transform tb=shift(2/3,0)*xscale(1/3);
transform tc=shift(0,-2h);

void Cantor(int n){
	picture pic;
	path p=(0,0)--(1,0)--(1,0.5h)--(0,0.5h)--cycle;
  fill(pic,p);
	for(int i=1; i<=n; ++i){
  add(pic);
  picture picc;
  add(picc,tc*ta*pic);
  add(picc,tc*tb*pic);
  pic=picc;
	}}

Cantor(9);

label("$0$",(0,2.5h));
label("$\frac 13$",(1/3,2.5h));
label("$\frac 23$",(2/3,2.5h));
label("$1$",(1,2.5h));
label("$C_0$",(0,h/4),W);
label("$C_1$",tc*(0,h/4),W);
label("$C_2$",tc*tc*(0,h/4),W);
label("$C_3$",tc*tc*tc*(0,h/4),W);
label("$\vdots$",tc*tc*tc*tc*(0,h/4),2W);