settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

import graph;

size(200);

real h=0.05;

transform ta=xscale(1/3);
transform tb=shift(2/3,0)*xscale(1/3);

picture pic;
fill(pic,box((0,0),(1,h)),linewidth(0.2));


void Cantor(picture picc){
  picture piccc;
  add(piccc,ta*picc);
  add(piccc,tb*picc);
  pic=piccc;
	}

for(int n=1; n<=7; ++n){
	Cantor(pic);
}
add(pic);

draw((1/4,0)--(1/4,h),red+linewidth(0.4));
draw((3/4,0)--(3/4,h),blue+linewidth(0.4));

labelx("$0$",0);
labelx("$\frac 13$",1/3);
labelx("$\frac 23$",2/3);
labelx("$1$",1);
labelx("$\frac 14$",1/4,red);
labelx("$\frac 34$",3/4,blue);

path rt=(1/4,1.1h){dir(25)}..(3/4,1.1h){dir(-25)};
draw("\scriptsize$S_2(\frac 14)=\frac 34$",subpath(rt,0.1,0.9),Arrow);
path lt=(3/4,-2h){dir(205)}..(1/4,-2h){dir(155)};
draw("\scriptsize$S_1(\frac 34)=\frac 14$",subpath(lt,0.1,0.9),Arrow);