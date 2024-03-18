settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,220);

real r=0.3;

path P=(0,0)--(0,1);

picture step(picture p)
{	
	picture a=shift((0,0.75))*scale(r)*p;
	add(a,shift((0,0.7))*rotate(70)*scale(r)*p);
	add(a,shift((0,0.6))*rotate(-70)*scale(r)*p);
	add(a,shift((0,0.5))*rotate(70)*scale(r)*p);
	add(a,shift((0,0.4))*rotate(-70)*scale(r)*p);
	add(a,shift((0,0.3))*rotate(70)*scale(r)*p);
	add(a,shift((0,0.2))*rotate(-70)*scale(r)*p);
	return a;
}

picture calc;

draw(calc,P,linewidth(0.2));

picture[] pp={calc};

int n=5;

for(int i=1; i<=n; ++i){
	pp[i]=step(pp[i-1]);
	//draw(pp[i],P,linewidth(0.1));
	//add(step(currentpicture));
}

add(pp[n]);

write(-log(7)/log(r));