settings.prc=false;
settings.outformat="pdf";

import graph;

size(400);

dotfactor=1;

pair c=0.77expi(pi/3);

int n=8;

int m=200;

pair julia(pair z){return z^2+c;}

for(int p=-m; p<=m; ++p){
	for(int q=-m; q<=m; ++q){
		pair c=(1.2p/m,1.2q/m);
		pair Z=c;
		pair z=c;
		for(int i=1; i<=n; ++i){
			z=julia(z);
		}
	if(length(z)<1.5){dot(Z);}
	}
}

xaxis(-1.2,1.2,red,RightTicks(new real[]{-1,1}));
yaxis(-1.2,1.2,red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$-i$",align=W),-1,W,red);