if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(130);

path c=unitcircle;

pair cent(pair p, pair q){
	real A[][]={{p.x,p.y},{q.x,q.y}};
	real[] b={p.x^2+p.y^2+1,q.x^2+q.y^2+1};
	real[] c=0.5*solve(A,b);
	return (c[0],c[1]);
	}

real rad(pair p, pair q){
	real l=dot(cent(p,q),cent(p,q));
	return sqrt(l-1);
	}
	
void circ(pair p, pair q){
	real paral=p.x*q.y-p.y*q.x;
	if(paral==0){draw(p--q);}
	else{
	draw(arc(cent(p,q),rad(p,q),min(degrees(p-cent(p,q)),degrees(q-cent(p,q))),max(degrees(p-cent(p,q)),degrees(q-cent(p,q)))));
	}
	}
	
void extcirc(pair p, pair q){
	real paral=p.x*q.y-p.y*q.x;
	if(paral==0){draw(unit(p)--(-unit(p))); draw(unit(q)--(-unit(q)));}
	else{
	picture pic;
	draw(pic,shift(cent(p,q))*scale(rad(p,q))*unitcircle,blue);
	clip(pic,unitcircle);
	add(pic);
	}
	}


filldraw(c,0.2grey+0.8white,white);
pair p=0.6dir(200);
pair q=0.3dir(110);

path l=shift(cent(p,q))*scale(rad(p,q))*unitcircle;
pair I[]=intersectionpoints(l,unitcircle);

extcirc(p,q);


//draw("$x$",q--I[0],dashed);
//draw("$y$",I[1]--q,dashed);
dot(Label("$P$",black),p,SE,red);
dot(Label("$Q$",black),q,SE,red);
dot(Label("$\Omega$",black),I[0],SW,red,NoFill);
dot(Label("$\Theta$",black),I[1],NE,red,NoFill);

//label("$\ell$",0.25dir(305),red);


