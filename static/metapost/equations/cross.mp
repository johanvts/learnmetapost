outputformat := "png";
outputtemplate := "%j_%c.png";
hppp := 0.25;
vppp := 0.25;
u:=1cm;
pair a,b,c,d;
a=-b=(0.58u,1u);
c=-d=(-.89u,1u);


beginfig(1);
  draw a--b;
  draw c--d;
endfig;

beginfig(2);
  draw a--b;
  draw c--d;
  
  pair I;
  I = whatever[a,b] = whatever[c,d];

  draw I--(I+(1u,0));
  dotlabel.top("I",I);
endfig;

beginfig(3)
  z1=(0,-0.5u);
  z2=(-0.5u,1u);
  z3=(-1u,0.2u);
  z4=(1u,0.2u);
  z5=z3+(0,0.5u);
  z6=z4+(0,0.5u);
  draw z1--z2;
  draw z3--z4;
  draw z5--z6;

  pair a,b;
  a = whatever[z1,z2]=whatever[z3,z4];
  b = whatever[z1,z2]=whatever[z5,z6];

  dotlabel.urt("a",a);
  dotlabel.urt("b",b);
endfig
end
