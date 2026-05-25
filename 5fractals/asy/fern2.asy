settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
\usepackage[svgnames,x11names]{xcolor}
");

import x11colors;
pen lGreen=rgb("00a000");

import graph;

size(120,0);

transform S=shift((0,1/4))*rotate(-5)*scale(3/4);
transform T=shift((0,1/4))*rotate(60)*scale(1/4);
transform U=shift((0,1/4))*rotate(-60)*scale(1/4);

picture P;
draw(P,(0,0.25)--(0,0.75),linewidth(0.17));
//filldraw(P,unitsquare,linewidth(0.1));

//draw((0,0)--(0,0.5),white);

int N=11;

picture Q=P;

for(int i=1; i<=N; ++i){
picture R;
add(R,S*Q);
add(R,T*Q);
add(R,U*Q);
erase(Q);
Q=R;
}

add(Q);