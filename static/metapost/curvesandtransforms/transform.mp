outputformat := "png";
outputtemplate := "%j_%c.png";
hppp := 0.25;
vppp := 0.25;
u:=1cm;

beginfig(1);
  draw fullcircle scaled u;
  draw fullcircle scaled u shifted (0.5cm,0);
endfig;

beginfig(2);
  z1 = (1u,1u);
  z2 = z1 rotated 90;
  dotlabel.rt("z1",z1);
  dotlabel.lft("z2",z2);
  dotlabel.bot("origin",origin);
  draw z1--origin--z2 dashed evenly;
  drawarrow z1{dir 135}..z2;
endfig;  

beginfig(3);
  u:=1cm;
  draw fullcircle scaled u;
  draw fullcircle scaled 1.5u;
endfig;

beginfig(4);
  u:=1cm;
  transform T;
  T = identity xscaled -1u yscaled 0.5u rotated 45;
  draw fullcircle scaled u;
  draw fullcircle transformed T;
  draw fullcircle transformed T rotated 90;
endfig;
  
end
