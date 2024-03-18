settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(80);

filldraw(box((0,0),(1,1)),lightblue);
for(int i=0; i<=1; ++i){
for(int j=0; j<=1; ++j){
	draw(shift((0.25+i/2,0.25+j/2))*scale(0.4)*unitcircle);
	}
	}