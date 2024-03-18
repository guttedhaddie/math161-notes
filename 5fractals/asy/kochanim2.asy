settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import animate;

size(180);

transform S=scale(1/3);
transform T=shift((1/3,0))*rotate(60)*S;
transform U=shift((1/2,sqrt(3)/6))*rotate(-60)*S;
transform V=shift((2/3,0))*S;

transform R=shift(1,0)*rotate(-120,(0,0));
transform RR=shift(1/2,-sqrt(3/4))*rotate(120,(0,0));

//line
path[] P={(0,0)--(1,0)};

//parabola
//real f(real x){return x*(1-x);}
//path[] P={graph(f,0,1,20,operator --)};

//circle
//path[] P=shift((0.5,0))*scale(0.5)*unitcircle;

int N=6;

animation A;

save();
draw(P[0]);
draw(R*P[0]);
draw(RR*P[0]);
A.add();
restore();

for(int i=1; i<=N; ++i){
save();
P.push(S*P[i-1]--T*P[i-1]--U*P[i-1]--V*P[i-1]);
draw(P[i],linewidth(0.2));
draw(R*P[i],linewidth(0.2));
draw(RR*P[i],linewidth(0.2));
A.add();
restore();
}

label(A.pdf("controls",multipage=false),fontsize(5));
