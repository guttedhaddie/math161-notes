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
import animation;

size(220);

transform S=shift((0,1/4))*rotate(-5)*scale(3/4);
transform T=shift((0,1/4))*rotate(60)*scale(1/4);
transform U=shift((0,1/4))*rotate(-60)*scale(1/4);

picture P;
draw(P,(0,0.25)--(0,0.75),linewidth(0.15));
//filldraw(P,unitsquare,linewidth(0.1));

int N=10;

animation A;

//save();
add(P);
A.add();
//restore();

picture Q=P;

for(int i=1; i<=N; ++i){
//save();
picture R;
add(R,S*Q);
add(R,T*Q);
add(R,U*Q);
erase(Q);
Q=R;
A.add(R);
//restore();
}

label(A.pdf("controls",multipage=false),fontsize(5));