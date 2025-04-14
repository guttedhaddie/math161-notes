settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(200,0);

pair A=(0,0);
pair B=(3,0);
pair C=(0.4,3);
pair D=B+(sqrt(C.x^2+C.y^2),0);
pair EE=(0.5,0);
pair F=B+(sqrt((C.x-EE.x)^2+(C.y-EE.y)^2),0);

draw(A--EE);
draw(C--F,heavygreen);
draw(EE--B,heavygreen);
draw(C--EE,blue,StickIntervalMarker(1,3,blue,dotframe(red)));
draw(A--C);
draw(B--F,blue,StickIntervalMarker(1,3,blue,dotframe(red)));
draw(B--C,orange,StickIntervalMarker(1,2,orange,dotframe(red)));

dot(Label("$A$",black),A,SW,red);
label("$B$",B,S);
label("$C$",C,NW);
//dot(Label("$D$",black),D,S,red);
label("$F$",F,SE);
dot(Label("$E$",black),EE,S,red);

//draw("$\alpha$",arc(A,A+0.35unit(B-A),A+0.35unit(C-A)),orange);
//draw(arc(A,A+0.35unit(B-A),A+0.35unit(C-A)),orange);
//draw("$\beta$",arc(B,B+0.45unit(C-B),B+0.45unit(A-B)),blue);
draw("$\eta$",arc(C,C+0.4unit(EE-C),C+0.4unit(B-C)),heavygreen);
draw("$\delta$",arc(B,B+0.25unit(D-B),B+0.25unit(C-B)),heavygreen);
//draw("$\epsilon$",arc(C,C+0.7unit(B-C),C+0.7unit(D-C)),blue);
//draw(arc(C,C+0.7unit(B-C),C+0.7unit(D-C)),blue);

