outputformat := "png";
outputtemplate := "%j_%c.png";
hppp := 0.25;
vppp := 0.25;
u:=0.5cm;

beginfig(1);
  z1=-z4=(-1u,1u);
  z3=-z2=(1u,1u);
  dotlabel.top("z1",z1);
  dotlabel.bot("z2",z2);
  dotlabel.top("z3",z3);
  dotlabel.bot("z4",z4);
 draw z1--z2--z3--z4--cycle;
endfig;

beginfig(2);
 z1=-z4=(-1u,1u);
  z3=-z2=(1u,1u);
  dotlabel.top("z1",z1);
  dotlabel.bot("z2",z2);
  dotlabel.top("z3",z3);
  dotlabel.bot("z4",z4);
  draw z1--z2..z3..z4--cycle;
endfig;

beginfig(3);
  z1=-z4=(-1u,1u);
  z3=-z2=(1u,1u);
  dotlabel.top("z1",z1);
  dotlabel.bot("z2",z2);
  dotlabel.top("z3",z3);
  dotlabel.bot("z4",z4);
  draw z1..z2..z4..z3..cycle dashed evenly;
endfig;

end
