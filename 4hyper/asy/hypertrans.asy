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

size(220);

pair al=(-1/2,0);
pair be=(-1,0);

pair f(pair z){return be*(z-al)/(conj(al)*z-1);}
pair g(pair z){return be*(z-al)/(conj(al)*z-1);}

pair P=(-0.85,0.1);
pair Q=(-0.75,0.1);
pair R=(-0.8,0.05);
pair S=(-0.85,0);
pair T=(-0.8,-0.05);
pair U=(-0.75,0);

draw(unitcircle);

dot(P);
dot(Q);
dot(R);
path p=S..T..U;
draw(p);

pair PP[]={P};
pair QQ[]={Q};
pair RR[]={R};
pair SS[]={S};
pair TT[]={T};
pair UU[]={U};

dotfactor=3;

for(int i=1; i<=10; ++i){
	PP.push(f(PP[i-1]));
	QQ.push(f(QQ[i-1]));
	RR.push(f(RR[i-1]));
	SS.push(f(SS[i-1]));
	TT.push(f(TT[i-1]));
	UU.push(f(UU[i-1]));
	dot(PP);
	dot(QQ);
	dot(RR);
	path p=SS[i]..TT[i]..UU[i];
	draw(p);
	}
