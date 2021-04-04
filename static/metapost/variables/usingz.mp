outputformat := "png";
outputtemplate := "%j.png";
hppp := 0.25;
vppp := 0.25;

beginfig(1)
  x1 = y1 = 10;
  x2 = y2 = 20;
  draw (0,y1)--z1--z2--(30,y2);
endfig
end
