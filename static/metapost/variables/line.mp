outputformat := "png";
outputtemplate := "%j.png";
hppp := 0.25;
vppp := 0.25;

beginfig(1);
  z1 = (10,10);
  z2 = (20,30);
  path p;
  p := z1--origin--z2;
  draw p;
endfig
end
