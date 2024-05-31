settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160);


transform S=scale(1/3);
transform T=shift((1/3,0))*rotate(60)*S;
transform U=shift((1/2,sqrt(3)/6))*rotate(-60)*S;
transform V=shift((2/3,0))*S;

transform R=shift(1,0)*rotate(-120,(0,0));
transform RR=shift(1/2,-sqrt(3/4))*rotate(120,(0,0));



int N=6;

path[] P={(0,0)--(1,0)};

for(int i=1; i<=N; ++i){
	P.push(S*P[i-1]--T*P[i-1]--U*P[i-1]--V*P[i-1]);
}


draw(P[N]);

draw(R*P[N]);
draw(RR*P[N]);