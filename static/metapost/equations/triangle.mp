outputformat := "png";
outputtemplate := "%j.png";
hppp := 0.25;
vppp := 0.25;

beginfig(1);
  numeric a,b;
  pair A,B,C,G;
  A = C - (a,0);
  B = C + (0,b);
  path circ;
  circ := fullcircle scaled 2cm;
  a=b=2cm;
  show length circ;
  show arclength circ;
  G := point 4 of circ;
  draw circ;
  dotlabel.llft("G",G);
  A=G;
  draw A--B--C--cycle;
endfig
end
