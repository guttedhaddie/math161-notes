settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160);

pair A=(0,0);
pair B=(5,0);
pair C=(1,2);
pair D=(1,0);

pair sh=(0,-0.5);

draw(D--C);
draw("$a$",B--C);
draw("$b$",C--A);
draw("$c=x+y$",shift(sh)*(A--B));
draw(A+1.2sh--A+0.8sh);
draw(B+1.2sh--B+0.8sh);
draw("$x$",D--A);
draw("$y$",B--D);

dot("$A$",A,S);
dot("$B$",B,S);
dot("$C$",C,N);
dot("$D$",D,S);