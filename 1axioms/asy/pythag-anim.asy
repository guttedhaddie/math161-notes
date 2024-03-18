settings.outformat="";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import animate;

size(100);

pen triang=yellow;

real a=1;
real b=2;

path tri=(0,0)--(a,0)--(a,b)--cycle;

animation A;

save();
filldraw(scale(a+b)*unitsquare,green);
filldraw(shift(b,0)*tri,triang);
filldraw(shift(a,b+a)*rotate(180)*tri,triang);
filldraw(shift(b+a,b)*rotate(90)*tri,triang);
filldraw(shift(0,a)*rotate(270)*tri,triang);
A.add();
restore();

save();
filldraw(scale(a+b)*unitsquare,green);
filldraw(shift(b,0)*tri,triang);
filldraw(shift(a+b,b)*rotate(180)*tri,triang);
filldraw(shift(b,b)*rotate(90)*tri,triang);
filldraw(shift(0,a+b)*rotate(270)*tri,triang);
A.add();
A.add();
A.add();
restore();

int n=10;
for(int i=1; i<=n; ++i){
	save();
	filldraw(scale(a+b)*unitsquare,green);
	filldraw(shift(b,0)*tri,triang);
	filldraw(shift(a+b,b)*rotate(180)*tri,triang);
	filldraw(shift(b+a*i/n,b)*rotate(90)*tri,triang);
	filldraw(shift(0,a+b-b*i/n)*rotate(270)*tri,triang);
	A.add();
	restore();
	}
	
for(int i=1; i<=n; ++i){
	save();
	filldraw(scale(a+b)*unitsquare,green);
	filldraw(shift(b,0)*tri,triang);
	filldraw(shift(a+b-b*i/n,b+a*i/n)*rotate(180)*tri,triang);
	filldraw(shift(b+a,b)*rotate(90)*tri,triang);
	filldraw(shift(0,a)*rotate(270)*tri,triang);
	A.add();
	restore();
	}

label(A.pdf("controls",multipage=false),fontsize(5));




