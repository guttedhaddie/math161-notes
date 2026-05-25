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

size(180);

dotfactor=1;

int n=9;

int m=200;

pair mand(pair z, pair c){return z^2+c;}

for(int p=-m; p<=m; ++p){
	for(int q=-m; q<=m; ++q){
		pair c=(1.2p/m-0.4,1.2q/m);
		pair Z=c;
		pair z=c;
		for(int i=1; i<=n; ++i){
			z=mand(z,c);
		}
	if(length(z-(0,-0.2))<1.5){dot(Z);}
	}
}

xaxis(-1.7,0.5,red,RightTicks(new real[]{-1,1}));
yaxis(-1.12,1.12,red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$-i$",align=W),-1,W,red);