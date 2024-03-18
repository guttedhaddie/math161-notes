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

pair al=0.55*dir(30);
real th=30;

pair T(pair z){return (al-z)/(conj(al)*z-1);}
pair Tinv(pair z){return (al+z)/(conj(al)*z+1);}
pair R(pair z){return rotate(th,(0,0))*z;}
pair Ral(pair z){return Tinv(R(T(z)));}

void trajarr(pair b, pen pen){
	pair bb=b;
	guide p=bb;
for(int k=0; k<12; ++k){
	bb=Ral(bb);
	p=p..bb;
	}
draw(p,Arrow(Relative(0.43)));
	dot(b,pen);
	for(int k=0; k<12; ++k){
		pair bb=b;
		b=Ral(b);
		dot(b,pen);
	}
}

void traj(pair b, pen pen){
	pair bb=b;
	guide p=bb;
for(int k=0; k<12; ++k){
	bb=Ral(bb);
	p=p..bb;
	}
draw(p);
	dot(b,pen);
	for(int k=0; k<12; ++k){
		pair bb=b;
		b=Ral(b);
		dot(b,pen);
	}
}


dot("$\alpha$",al,0.5SW);

trajarr(0.99*unit(al),red);
trajarr(0.95*unit(al),orange);
trajarr(0.9*unit(al),yellow);
traj(0.85*unit(al),heavygreen);
traj(0.8*unit(al),blue);
traj(0.75*unit(al),purple);
traj(0.7*unit(al),grey);



