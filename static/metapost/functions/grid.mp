outputformat := "png";
outputtemplate := "%j_%c.png";
hppp := 0.5;
vppp := 0.5;
u:=0.5cm;
input TEX;

vardef fun (expr x)=
  (x**2)*u/10
enddef;

beginfig(1)
  for i:=0 upto 10:
    draw (0,i*u)--(10u,i*u);
    draw (i*u,0)--(i*u,10u);
    label.bot(TEX("$x_{"& decimal(i) &"}$"),(i*u,0));
  endfor;
  draw (0,0) for i:=1 upto 10: ..(i*u,fun(i)) endfor;
endfig;
end;
