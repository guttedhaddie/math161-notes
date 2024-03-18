settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

real a=1.5;

pair P=(a-sqrt(a^2-1),0);


fill(unitcircle,0.2grey+0.8white);
draw(shift((a,a))*scale(sqrt(2a^2-1))*reverse(unitcircle),blue,ArcArrow(Relative(0.45)));
draw(shift((a,-a))*scale(sqrt(2a^2-1))*unitcircle,blue,ArcArrow(Relative(0.45)));

clip(unitcircle);

pair up=(-a,sqrt(a^2-1));
pair dn=(-a,-sqrt(a^2-1));

draw(P--P+0.3*up,dashed);
draw(P--P+0.3*dn,dashed);

dot(P,red);

draw("$\theta$",arc(P,P+0.1*up,P+0.1*dn));
