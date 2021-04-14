outputformat:="png";
u:=1cm;

beginfig(1)
  z0=-z2=(-1u,1u);
  z1=-z3=(1u,1u);

  draw z0--z1--z2--z3--cycle;
  
endfig;
end