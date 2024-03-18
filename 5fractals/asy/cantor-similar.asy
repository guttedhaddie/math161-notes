settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
%\input{../../preamble}
");
import graph;
import animate;

size(450);

real h=0.02;
real v=0.04;

transform ta=xscale(1/3);
transform tb=shift(2/3,0)*xscale(1/3);
transform tc=shift(0,-v);

picture pic;
path p=(0,0)--(1,0)--(1,h)--(0,h)--cycle;
fill(pic,p);

picture picb;
path p=(0,0)--(1,0)--(1,h)--(0,h)--cycle;
fill(picb,p,blue);

picture picr;
path p=(0,0)--(1,0)--(1,h)--(0,h)--cycle;
fill(picr,p,red);

void Cantor(picture picc){
  picture piccc;
  add(piccc,ta*picc);
  add(piccc,tb*picc);
  pic=piccc;
	}
	
void Cantorb(picture picc){
  picture piccc;
  add(piccc,ta*picc);
  add(piccc,tb*picc);
  picb=piccc;
	}
	
void Cantorr(picture picc){
  picture piccc;
  add(piccc,ta*picc);
  add(piccc,tb*picc);
  picr=piccc;
	}
	
for(int m=1; m<=8; ++m){Cantor(pic);}
for(int m=1; m<=8; ++m){Cantorb(picb);}
for(int m=1; m<=8; ++m){Cantorr(picr);}

picture pica;
label(pica,"$0$",(0,2.5h));
label(pica,"$\frac 13$",(1/3,2.5h));
label(pica,"$\frac 23$",(2/3,2.5h));
label(pica,"$1$",(1,2.5h));
add(pica,pic);

animation A;

int n=8;

save();
add(pica);
add(tc*ta*picb);
add(tc*tb*picr);
A.add();
restore();

for(int i=1; i<=n; ++i){
save();
add(pica);
//draw((1,0)--tc*(1/3,0),dashed);
//draw((0,0)--tc*(0,0),dashed);
transform t=shift(0,-i*v/n)*xscale(1/3*(3-2i/n));
add(t*picb);
A.add();
restore();
}

for(int i=1; i<=n; ++i){
save();
add(pica);
add(tc*ta*picb);
//draw((1,0)--tc*(1/3,0),dashed);
//draw((0,0)--tc*(0,0),dashed);
transform t=shift((2/3*i/n,0))*tc*ta;
add(t*picr);
A.add();
restore();
}


label(A.pdf("controls",multipage=false),fontsize(5));