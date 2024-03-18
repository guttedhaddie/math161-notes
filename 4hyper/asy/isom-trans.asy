settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

path c=unitcircle;

pair P=0.5dir(40);
pair O=(0,0);
fill(c,0.2grey+0.8white);

pair al=0.3*dir(30);


pair f(pair z){return (al-z)/(conj(al)*z-1);}
pair finv(pair z){return (al+z)/(conj(al)*z+1);}

dot("$\alpha$",al,SE);
dot("$O$",O,SE);

void traj(pair b, pen pen){
pair bb=finv(finv(finv(b)));
	guide p=bb;
for(int k=0; k<6; ++k){
	bb=f(bb);
	p=p..bb;
	}
draw(p,Arrow(Relative(0.42)));
pair bb=finv(finv(finv(b)));
	dot(bb,pen);
	for(int k=0; k<6; ++k){
		bb=f(bb);
		dot(bb,pen);
	}
}

traj(0.81*dir(120),red);
traj(0.54*dir(120),orange);
traj(0.27*dir(120),yellow);
traj(O,heavygreen);
traj(-0.27*dir(120),blue);
traj(-0.54*dir(120),purple);
traj(-0.81*dir(120),grey);

