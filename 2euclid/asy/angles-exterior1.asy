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

draw(A--B,heavygreen);
draw(C--D,heavygreen);
draw(A--C,blue,StickIntervalMarker(1,1,blue,dotframe(red)));
draw(B--D,blue,StickIntervalMarker(1,1,blue,dotframe(red)));
draw(B--C,orange,StickIntervalMarker(1,2,orange,dotframe(red)));

label("$A$",A,SW);
label("$B$",B,S);
label("$C$",C,NW);
label("$D$",D,SE);

draw("$\alpha$",arc(A,A+0.35unit(B-A),A+0.35unit(C-A)),orange);
draw("$\beta$",arc(B,B+0.45unit(C-B),B+0.45unit(A-B)),blue);
draw("$\gamma$",arc(C,C+0.4unit(A-C),C+0.4unit(B-C)),heavygreen);
draw("$\delta$",arc(B,B+0.25unit(D-B),B+0.25unit(C-B)),heavygreen);
draw("$\epsilon$",arc(C,C+0.7unit(B-C),C+0.7unit(D-C)),blue);