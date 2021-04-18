outputformat := "png";
outputtemplate := "%j_%c.png";
hppp := 0.5;
vppp := 0.5;
u:=0.5cm;
input TEX;

vardef fun (expr x)=
  (x**2)*u/10
enddef;

vardef std_normal(expr x) = 
  e:=2.7182;
  pi:=3.1415;
  (1/sqrt(2*pi))*(e**-((x**2)/2))
enddef;

vardef functionpath (expr func, a, b) =
  ((a, scantokens func(a)) for i:=a step (1/(10(b-a))) until b:
      ..(i,scantokens func(i)) endfor)
enddef;

beginfig(1)
  draw ((-4,std_normal(-4)) for i:=-3.9 step 0.1 until 4:
      ..(i,std_normal(i)) endfor) scaled 2u yscaled u;
endfig;

beginfig(2)
  for i:=0 upto 5:
    draw functionpath("std_normal", -4, 4) scaled 2u yscaled u shifted (i*u,0);
  endfor;
endfig;

end;
