settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import markers;

size(150,0);

pair A=(0,0);
pair B=(2,0);
pair C=(2,1);
pair D=(0,1);


real sc=0.08;
path sq=scale(sc)*unitsquare;
draw(sq);
draw(shift(B-(sc,0))*sq);
draw(shift(C-(sc,sc))*sq);
draw(shift(D-(0,sc))*sq);

draw(A--C);
draw(A--B,StickIntervalMarker(1,2,blue,dotframe(red)));
draw(C--B,StickIntervalMarker(1,1,heavygreen,dotframe(red)));
draw(C--D,StickIntervalMarker(1,2,blue,dotframe(red)));
draw(D--A,StickIntervalMarker(1,1,heavygreen,dotframe(red)));

draw(arc(A,0.25unit(C-A),0.25unit(D-A),CCW),StickIntervalMarker(1,2,orange));
draw(arc(A,0.3unit(B-A),0.3unit(C-A),CCW),StickIntervalMarker(1,1,magenta));
draw(arc(C,C+0.25unit(A-C),C+0.25unit(B-C),CCW),StickIntervalMarker(1,2,orange));
draw(arc(C,C+0.3unit(D-C),C+0.3unit(A-C),CCW),StickIntervalMarker(1,1,magenta));

label("$A$",A,SW);
label("$B$",B,SE);
label("$C$",C,NE);
label("$D$",D,NW);
//label("$\alpha$",A+0.48dir(13));
//label("$\beta$",A+0.45dir(60));
//label("$\gamma$",C+0.45dir(240));
//label("$\delta$",C+0.45dir(180+13));