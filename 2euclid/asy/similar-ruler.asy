settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(0,80);

pair O=(0,0);
pair P=dir(30);
pair al=I*(P-O);

void tickk(pair OO, pair PP, int nn, real ll){
	pair all=I*unit(PP-OO);
	draw(Label((string) nn,Relative(1)),OO+nn*(PP-OO)--OO+nn*(PP-OO)-ll*all);
}

void axxis(pair OOO, pair PPP, int mmm, int nnn){
	draw(OOO+mmm*(PPP-OOO)--OOO+nnn*(PPP-OOO));
	for(int k=mmm; k<=nnn; ++k){
		tickk(OOO,PPP,k,0.2);	
	}
}


axxis(O,P,0,5);


draw("$1$",P--O,blue+linewidth(1.2));
dot("$O$",O,al,red);
dot("$P$",P,al,red);

pair Q=(5,0.5);
pair R=Q+3.6dir(-10);
pair al2=I*dir(-10);

axxis(Q,Q+dir(-10),0,5);

draw(Q--Q+5dir(-10));
draw("$|QR|=4.6$",R--Q,0.9heavygreen+0.1black+linewidth(1.2));

dot("$Q$",Q,al2,red);
dot("$R$",R,al2,red);
