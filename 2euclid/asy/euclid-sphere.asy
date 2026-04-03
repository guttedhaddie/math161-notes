settings.tex="lualatex";
defaultpen(fontsize(12pt));

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
%\everydisplay{\Umathoperatorsize\displaystyle=4.5ex}
\usepackage[svgnames]{xcolor}
");

//OpenGL (default) - no opacity

//PNG - no opacity
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="png";

//HTML - opacity fine
settings.outformat="html";

//PDF
if(!settings.multipleView) settings.batchView=false;
settings.render=4;settings.outformat="pdf";

include graph;

import graph3;
import solids;

currentprojection=perspective(30,20,20);
size(100);

real th=90;

draw(arc(O,1,0,0,90,0));
draw(arc(O,1,90,0,90,th,Z));
draw(arc(O,1,0,th,90,th));

real h=82;
path3 p=arc(Cos(h)*Z,Sin(h),90,0,90,90-h);
draw(p);
draw(rotate(90-2h,Y)*p);
path3 q=arc(Cos(h)*Z,Sin(h),90,th-(90-h),90,th);
draw(q);
draw(rotate(2h-90,X)*q);
draw(arc(O,1,h,90-h,90,90-h));
draw(arc(O,1,h,th-(90-h),90,th-(90-h)));


//real t=20;
//draw(arc(Cos(t)*Z,Sin(t),90,0,90,th),dashed);

//label("$\theta$",Z+0.18*dir(100,th/2));

draw(unitsphere,lightgrey+opacity(0.1));
