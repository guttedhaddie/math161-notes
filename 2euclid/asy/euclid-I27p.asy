settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160);


pair A=(-0.5,1);
pair B=-A;
pair C=(8,-1);

real h=0.2;

draw(A+h*(A-B)--B+h*(B-A));
draw(A+0.5h*(A-C)--C+0.5h*(C-A));
draw(C+0.7h*(C-B)--B+h*(B-C));

draw("$\alpha$",arc(A,0.41,180*angle(B-A)/pi,180*angle(C-A)/pi));
draw("$\beta$",arc(B,0.41,180*angle(A-B)/pi,180));

label("$A$",A,NE);
label("$B$",B,SW);
label("$C$",C,S);




