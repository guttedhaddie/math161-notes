settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(180,0);

real th=40;

pair A=(0,0);
pair B=(1.4,0);
pair C=1.2dir(th);
pair G=(C.x,-C.y);

transform T=shift((2.3,0.2))*rotate(110,(0,0));

draw(T*A--T*B,StickIntervalMarker(1,1,dotframe(red)));
draw(T*C--T*B,orange,StickIntervalMarker(1,3,orange,dotframe(red)));
draw(T*C--T*A,blue,StickIntervalMarker(1,2,blue,dotframe(red)));


draw(C--G);

draw(A--B,StickIntervalMarker(1,1,dotframe(red)));
draw(C--B,orange,StickIntervalMarker(1,3,orange,dotframe(red)));
draw(C--A,blue,StickIntervalMarker(1,2,blue,dotframe(red)));
draw(G--A,blue,StickIntervalMarker(1,2,blue,dotframe(red)));
draw(G--B,orange,StickIntervalMarker(1,3,orange,dotframe(red)));

label("$A$",A,W);
label("$B$",B,E);
label("$C$",C,NW);
label("$G$",G,SW);

draw(arc(A,A+0.25unit(G-A),A+0.25unit(B-A)),StickIntervalMarker(1,1,orange));
draw(arc(C,C+0.25unit(A-C),C+0.25unit(G-C)),StickIntervalMarker(1,2,heavygreen));
draw(arc(G,G+0.25unit(C-G),G+0.25unit(A-G)),StickIntervalMarker(1,2,heavygreen));
draw(arc(C,C+0.25unit(G-C),C+0.25unit(B-C)),StickIntervalMarker(1,1,purple));
draw(arc(G,G+0.25unit(B-G),G+0.25unit(C-G)),StickIntervalMarker(1,1,purple));
//draw(arc(B,B+0.2unit(D-B),B+0.2unit(EE-B)),StickIntervalMarker(2,1,heavygreen));
//draw(arc(B,B+0.2unit(EE-B),B+0.2unit(A-B)),StickIntervalMarker(1,1,orange));


label("$D$",T*A,S);
label("$E$",T*B,E);
label("$F$",T*C,NW);

draw(arc(T*A,T*A+0.25unit(T*B-T*A),T*A+0.25unit(T*C-T*A)),StickIntervalMarker(1,1,orange));