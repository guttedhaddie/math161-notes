settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(190,130,IgnoreAspect);

real h=0.04;

transform ta=xscale(1/3);
transform tb=shift(2/3,0)*xscale(1/3);
transform tc=shift(0,-2h);

picture pic;
draw(pic,(0,-0.01)--(0,0.03),linewidth(0.2));


void Cantor(picture picc){
  picture piccc;
  add(piccc,ta*picc);
  add(piccc,tb*picc);
  pic=piccc;
	}
	
label("$0$",(0,2.5h));
label("$\frac 13$",(1/3,2.5h));
label("$\frac 23$",(2/3,2.5h));
label("$1$",(1,2.5h));
label("$C_0$",(0,h/4),W);
label("$C_1$",tc*(0,h/4),W);
label("$C_2$",tc*tc*(0,h/4),W);
label("$C_3$",tc*tc*tc*(0,h/4),W);
label("$C_4$",tc*tc*tc*tc*(0,h/4),W);
label("$C_5$",tc*tc*tc*tc*tc*(0,h/4),W);
label("$C_6$",tc*tc*tc*tc*tc*tc*(0,h/4),W);
label("$\vdots$",tc*tc*tc*tc*tc*tc*tc*(0,h/4),2W);
		
add(pic);
Cantor(pic);
add(tc*pic);
Cantor(pic);
add(tc*tc*pic);
Cantor(pic);
add(tc*tc*tc*pic);
Cantor(pic);
add(tc*tc*tc*tc*pic);
Cantor(pic);
add(tc*tc*tc*tc*tc*pic);
Cantor(pic);
add(tc*tc*tc*tc*tc*tc*pic);
Cantor(pic);
add(tc*tc*tc*tc*tc*tc*tc*pic);

label("$0$",(0,2.5h));
label("$\frac 13$",(1/3,2.5h));
label("$\frac 23$",(2/3,2.5h));
label("$1$",(1,2.5h));
