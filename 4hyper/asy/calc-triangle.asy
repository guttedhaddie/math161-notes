settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(170);

pair cent(pair p, pair q){
	real A[][]={{2p.x,2p.y},{2q.x,2q.y}};
	real[] b={p.x^2+p.y^2+1,q.x^2+q.y^2+1};
	real[] c=solve(A,b);
	return (c[0],c[1]);
	}

real rad(pair p, pair q){
	real l=dot(cent(p,q),cent(p,q));
	return sqrt(l-1);
	}

void circ(pair p, pair q, pen pen=black){
	real paral=p.x*q.y-p.y*q.x;
	if(paral==0){draw(p--q,pen);}
	else{
	draw(arc(cent(p,q),rad(p,q),min(degrees(p-cent(p,q)),degrees(q-cent(p,q))),max(degrees(p-cent(p,q)),degrees(q-cent(p,q)))),pen);
	}
	}

pair al=(0,-1/2);
pair be=(0,1);

pair f(pair z){return be*(z-al)/(conj(al)*z-1);}

pair A=(0,-1/2);
pair B=(0,-1/5);
pair C=(-3/5,-1/5);

circ(A,B,red);
circ(B,C,heavygreen);
circ(C,A,blue);

draw(unitcircle,dashed);

dot("$A$",A,E);
dot("$B$",B,E);
dot("$C$",C,S);

dot("$O=f(A)$",f(A),NW);
dot("$f(B)$",f(B),E);
dot("$f(C)$",f(C));

circ(f(A),f(B),red);
circ(f(B),f(C),heavygreen);
circ(f(C),f(A),blue);

write(conj(al));