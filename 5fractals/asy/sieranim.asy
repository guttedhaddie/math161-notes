if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
settings.compact=true;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import animation;

size(135);

transform SS=scale(1/3);
transform T=shift((1/3,0))*SS;
transform U=shift((2/3,0))*SS;
transform V=shift((0,1/3))*SS;
transform WW=shift((0,2/3))*SS;
transform X=shift((1/3,2/3))*SS;
transform Y=shift((2/3,1/3))*SS;
transform Z=shift((2/3,2/3))*SS;


picture P;

fill(P,unitsquare);

//fill(P,shift((0.5,0.5))*scale(0.5)*unitcircle);

//draw(P,(0,0)--(1,0)--(0,1)--cycle);

/*
transform sh=shift(0.5,0.5)*scale(0.5);
guide center=sh*(0,1){W}..tension 0.8..sh*(0,0){(1,-.5)}..tension 0.8..{W}sh*(0,-1); 
draw(P,sh*(0,1)..sh*(-1,0)..sh*(0,-1));
filldraw(P,center{E}..{N}sh*(1,0)..{W}cycle);
unfill(P,circle(sh*(0,0.5),0.125/2));
fill(P,circle(sh*(0,-0.5),0.125/2));
*/

int N=5;

animation A;

//save();
add(P);
A.add();
//restore();

picture Q=P;

for(int i=1; i<=N; ++i){
//save();
picture R;
add(R,SS*Q);
add(R,T*Q);
add(R,U*Q);
add(R,V*Q);
add(R,WW*Q);
add(R,X*Q);
add(R,Y*Q);
add(R,Z*Q);
erase(Q);
Q=R;
A.add(R);
//restore();
}

label(A.pdf("controls",multipage=false),fontsize(5));




