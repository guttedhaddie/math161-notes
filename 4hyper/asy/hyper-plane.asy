settings.tex="pdflatex";

//OpenGL (default) - no opacity

//PNG - no opacity
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="png";

//HTML - opacity fine
settings.outformat="html";

//PDF
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import graph3;

size(220);

currentprojection=orthographic(4,-4,1.5);

draw(unitcircle3);

real a=2;
real b=0;
real r=sqrt(a^2+b^2-1);
path3 c=shift((a,b,0))*scale3(r)*unitcircle3;

triple[] I=intersectionpoints(c,unitcircle3);

//draw(arc((a,b,0),I[0],I[1]),blue);

triple flat(real t){return (2,0,0)+sqrt(3)*dir(90,210-t);}

triple hyp(triple P){real t= 2/(1-P.x^2-P.y^2);
	return (0,0,-1)+t*(P.x,P.y,1);
	}
	
draw(graph(flat,0,60),blue,Arrow3(Relative(0.65)));

triple hypfl(real t){return hyp(flat(t));}

dot(flat(45),heavygreen);
dot(hypfl(45),heavygreen);
draw((0,0,-1)--hypfl(45),heavygreen+dashed);

dot(flat(23),orange);
dot(hypfl(23),orange);
draw((0,0,-1)--hypfl(23),orange+dashed);

real d=14;
path3 geo=graph(hypfl,d,60-d);
draw(geo,blue,Arrow3(Relative(0.65)));

triple hyper(pair pol){return (pol.x*cos(pol.y),pol.x*sin(pol.y),sqrt(1+pol.x^2));}

surface s=surface(hyper,(0,0),(1.9,2pi),100);

draw(s,gray+opacity(0.2));

xaxis3("$x$",-2,2,red,OutTicks(new real[]{-2,-1,1,2}));
yaxis3("$y$",-2,2,red,OutTicks(new real[]{-2,-1,1,2}));
zaxis3("$z$",-1,1.1sqrt(5),red,OutTicks(new real[]{-1,1,2,3}));

//triple pl(pair u){return u.x*hypfl(23)+u.y*hypfl(45);}

//surface ppp=surface(pl,(0,0),(1,1),100);

//draw(surface(O--scale3(1.2)*geo--cycle),yellow+opacity(0.2));


//triple flatt(real t){return (0,-2,0)+sqrt(3)*dir(90,210-t);}
//draw(graph(flatt,90,150),blue,Arrow3(Relative(0.65)));

//triple hypflt(real t){return hyp(flatt(t));}

//path3 geof=graph(hypflt,90+d,150-d);
//draw(geof,blue,Arrow3(Relative(0.65)));