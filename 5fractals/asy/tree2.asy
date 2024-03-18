settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,220);

picture step(picture p)
{	
	picture a=shift((0,0.6))*rotate(70)*scale(0.4)*p;
	add(a,shift((0,0.6))*rotate(-70)*scale(0.4)*p);
	add(a,shift((0,0.6))*scale(0.4)*p);
	return a;
}


draw((0,0)--(0,1),linewidth(0.1)+brown);
draw((0,0.3)+0.2*dir(30)--(0,0.2)--(0,0.3)+0.2*dir(150),linewidth(0.1)+heavygreen);
for(int i=1; i<=7; ++i){
	add(step(currentpicture));
}
