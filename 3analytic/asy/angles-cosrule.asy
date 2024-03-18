settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,100);

pair B=(2,2);

//size(0,120);
//pair B=(-1,1.9);
//pair B=(4,1.9);
pair A=(3,0);
pair C=(0,0);

pair H=(B.x,0);
draw("$a$",B--C);
draw("$c$",A--B);

draw("$b$",C--A);

//dot(A-(0,0.7),white);

if(H.x<0){
	draw("$x<0$",H--C,dashed);
	draw("$z>0$",A-(0,0.4)--H-(0,0.4),S,dashed);
	draw(H-(0,0.5)--H-(0,0.3));
	draw(A-(0,0.5)--A-(0,0.3));
	draw(H+0.1*unit((0,B.y))--H+0.1*unit((0,B.y))+0.1*unit(A)--H+0.1*unit(A));
	dot(Label("$B$",black),B,W,red);
	draw("$h$",B--H,dashed);
  draw("$\gamma$",arc((0,0),0.25*unit(A),0.2*unit(B)));
  dot(Label("$A$",black),A,S,red);
  dot(Label("$C$",black),C,S,red);}
	
if(H.x>0 & H.x<A.x){
  //draw("$x>0$",C-(0,0.4)--H-(0,0.4),dashed);
  //draw("$z>0$",H-(0,0.4)--A-(0,0.4),dashed);
	//draw(H-(0,0.5)--H-(0,0.3));
	//draw(C-(0,0.5)--C-(0,0.3));
	//draw(A-(0,0.5)--A-(0,0.3));
  draw(H+0.1*unit((0,B.y))--H+0.1*unit((0,B.y))+0.1*unit(A)--H+0.1*unit(A));
  draw("$h$",H--B,dashed);
  draw("$\gamma$",arc((0,0),0.25*unit(A),0.2*unit(B)));
  dot(Label("$B$",black),B,E,red);
  dot(Label("$A$",black),A,S,red);
  dot(Label("$C$",black),C,S,red);}
  
if(H.x>A.x){
  draw("$z<0$",H--A,dashed);
	draw("$x>0$",C-(0,0.4)--H-(0,0.4),S,dashed);
	draw(H-(0,0.5)--H-(0,0.3));
	draw(C-(0,0.5)--C-(0,0.3));
  draw(H+0.1*unit((0,B.y))--H+0.1*unit((0,B.y))-0.1*unit(A)--H-0.1*unit(A));
  draw("$h$",H--B,dashed);
  dot(Label("$B$",black),B,E,red);
  draw("$\gamma$",arc((0,0),0.4*unit(A),0.2*unit(B)));
  dot(Label("$A$",black),A,S,red);
  dot(Label("$C$",black),C,S,red);}

dot(Label("$D$",black),(H.x,0),S,red);





