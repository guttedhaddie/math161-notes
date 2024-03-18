settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(150);

path c=unitcircle;



draw(c);

draw(dir(-30)--dir(100),red);


path t=dir(-30)--dir(-30)+10dir(60);
path s=dir(100)--dir(100)+10dir(10);
	

pair I=intersectionpoint(t,s);

draw(dir(-30)--I,heavygreen);
draw(dir(100)--I,heavygreen);

int n=10;
for(int i=1; i<n; ++i){
	path p=I--I+10dir(-120-(170-120)*i/n);
	//draw(p);
	pair[] J=intersectionpoints(p,c);
	draw(I--J[0],dashed);
	draw(J[0]--J[1],blue);
	}
	
	dotfactor=8;
	dot(I,heavygreen);

dot(Label("$\Omega$",black),dir(-30),dir(-30),red);
dot(Label("$\Theta$",black),dir(100),dir(100),red);
dot(Label("$P$",black),0.215*dir(-30)+0.785*dir(100),dir(230),red);
	
dot(Label("$Q$",black),0.595*dir(-30)+0.405*dir(100),dir(255),red);