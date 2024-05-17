settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

draw(unitcircle);

int N=9;
real th=360/N;

draw(dir(0)--(0,0)--dir(th));
draw("$1$",dir(th)--(0,0));

draw(dir(0)--dir(th),blue+linewidth(1));

for(int i=2; i<=N; ++i){
	draw(dir((i-1)*th)--dir(i*th));
	}
for(int i=1; i<=N; ++i){
	dot(dir(i*th),red);
	}

label("$R$",dir(th/2),dir(th/2),blue);

draw("$\frac{2\pi}N$",arc((0,0),0.34,0,th));