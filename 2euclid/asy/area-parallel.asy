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
import markers;

size(140);

real th=75;

pair A=(0,0);
pair B=(1,0);
pair D=1.2dir(th);
pair C=B+D;

draw(A--B--C--D--A--C);


draw(arc(A,A+0.3unit(C-A),A+0.3unit(D-A)),StickIntervalMarker(2,1,heavygreen));
draw(arc(C,C+0.3unit(A-C),C+0.3unit(B-C)),StickIntervalMarker(2,1,heavygreen));
draw(arc(A,A+0.23unit(B-A),A+0.23unit(C-A)),StickIntervalMarker(1,1,blue));
draw(arc(C,C+0.23unit(D-C),C+0.23unit(A-C)),StickIntervalMarker(1,1,blue));

dot(Label("$A$",black),A,W,red);
dot(Label("$B$",black),B,E,red);
dot(Label("$C$",black),C,E,red);
dot(Label("$D$",black),D,W,red);
