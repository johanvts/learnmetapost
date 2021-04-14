outputformat := "png";
outputtemplate := "%j_%c.png";
hppp := 0.25;
vppp := 0.25;
u:=0.5cm;

beginfig(1);
  z1=(0,1u);
  z2=(1u,0);
  dotlabel.top("z1",z1);
  dotlabel.rt("z2",z2);
  draw z1{down}..{dir 45}z2;
endfig;


beginfig(2);
  z0=-z1=(0,1u);
  z2=-z3=(1u,0);
  z4=(0,2u);
  z5=(2u,0);

  path p,m;
  p:= z0{down}..{right}z2{left}..{down}z1{up}..{left}z3{right}..{up}z0;

  m:= z4--z5;
  draw p;
  draw m dashed evenly;
  draw p reflectedabout(z4,z5);
endfig;


end
