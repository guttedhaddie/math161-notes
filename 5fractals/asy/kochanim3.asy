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
import animate;

size(180);

transform S=scale(1/3);
transform T=shift((1/3,0))*rotate(60)*S;
transform U=shift((1/2,sqrt(3)/6))*rotate(-60)*S;
transform V=shift((2/3,0))*S;

picture[] pic;
pic[0]=new picture;

//line
draw(pic[0],(0,0)--(1,0));

//parabola
//real f(real x){return x*(1-x);}
//draw(pic[0],graph(f,0,1,20,operator --));

//circle
//draw(pic[0],shift((0.5,0))*scale(0.4)*unitcircle);

int N=7;

animation A;

save();
add(pic[0]);
draw((1/3,0)--(1/2,sqrt(3)/6)--(2/3,0),dotted);
A.add();
restore();

for(int i=1; i<=N; ++i){
save();
pic[i]=new picture;
picture Spic=S*pic[i-1];
picture Tpic=T*pic[i-1];
picture Upic=U*pic[i-1];
picture Vpic=V*pic[i-1];
add(pic[i],Spic);
add(pic[i],Tpic);
add(pic[i],Upic);
add(pic[i],Vpic);
add(pic[i]);
A.add();
restore();
}

label(A.pdf("controls",multipage=false),fontsize(5));
