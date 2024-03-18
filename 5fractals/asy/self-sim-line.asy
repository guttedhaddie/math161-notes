settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(120);

picture lin;
pair A=(0,0);
pair B=(3,1);

draw(lin,A--B,heavygreen+linewidth(1),StickIntervalMarker(5,1,dotframe(red)));

add(shift((0,3.5))*lin);

for(int m=0; m<3; ++m){
	for(int n=0; n<3; ++n){
		filldraw(shift((m,n))*unitsquare,0.5blue+0.5white);
	}
	}