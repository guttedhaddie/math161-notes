settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160);

transform S=shift((0,1))*scale(1/2);
transform T=shift((1,1))*scale(1/2);
transform U=shift((1,0))*scale(1/2);
transform V=shift((0,0))*scale(1/2);

picture P;
draw(P,(0,0)--(1,0),linewidth(0.1));
//filldraw(P,unitsquare,linewidth(0.1));

//draw((0,0)--(0,0.5),white);

int N=9;

picture Q=P;

for(int i=1; i<=N; ++i){
picture R;
add(R,S*Q);
add(R,T*Q);
add(R,U*Q);
add(R,V*Q);
erase(Q);
Q=R;
}

add(Q);