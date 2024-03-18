settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140);

picture c;
draw(c,unitcircle);
clip(c,box((-1,0),(1,1)));

for(int k=-3; k<=4; ++k){
	add(shift((2k-1,0))*c);
	}
for(int k=0; k<=3; ++k){
	add(shift((4k-6,0))*scale(2)*c);
	}
for(int k=-4; k<=4; ++k){
	draw((2k,0)--(2k,5));
	}
add(shift((-4,0))*scale(4)*c);
add(shift((4,0))*scale(4)*c);
add(shift((0,0))*scale(4)*c);
add(shift((4,0))*scale(3)*c);


path p=buildcycle(arc((0,0),4,0,90),(2,5)--(2,0),arc((4,0),3,90,180));

filldraw(p,blue+opacity(0.4));

xaxis("$x$",red);
yaxis("$y$",red);

clip(box((-1,-0.6),(7.1,5)));