settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(120);

real r=2;
draw(unitcircle);
draw(r*dir(-30)--r*dir(90),red+linewidth(0.7));
draw(r*dir(90)--r*dir(210),orange+linewidth(0.7));
draw(r*dir(210)--r*dir(-30),0.9yellow+0.1black+linewidth(0.7));
draw(r*dir(-30)--dir(150),0.7green+0.3black+linewidth(0.7));
draw(r*dir(90)--dir(270),blue+linewidth(0.7));
draw(r*dir(210)--dir(30),purple+linewidth(0.7));

void ddot(pair a, real b, pen p, pen q, pen r){
	path P=(0,0)--arc((0,0),b,0,120)--cycle;
	fill(shift(a)*P,p);
	fill(shift(a)*rotate(120,(0,0))*P,q);
	fill(shift(a)*rotate(-120,(0,0))*P,r);
	draw(shift(a)*scale(b)*unitcircle,linewidth(0.3));
}

ddot((0,0),0.11,blue,0.7green+0.3black,purple);
ddot(dir(30),0.11,red,purple,black);
ddot(dir(150),0.11,orange,0.7green+0.3black,black);
ddot(dir(270),0.11,0.9yellow+0.1black,blue,black);
ddot(dir(30),0.11,red,purple,black);
ddot(r*dir(90),0.11,red,blue,orange);
ddot(r*dir(210),0.11,0.9yellow+0.1black,purple,orange);
ddot(r*dir(-30),0.11,red,0.7green+0.3black,0.9yellow+0.1black);