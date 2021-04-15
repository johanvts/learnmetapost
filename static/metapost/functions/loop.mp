outputformat := "png";
outputtemplate := "%j_%c.png";
hppp := 0.25;
vppp := 0.25;
u:=0.25cm;

beginfig(1);
for i:=0 upto 10:
	dotlabel("",(i*u,0));
endfor;	
endfig;

beginfig(2);
for i:=0 upto 10:
	dotlabel("",(i*u,uniformdeviate(i*2)));
endfor;
endfig;

beginfig(3);
for i:=0 upto 10:
	draw (i*u,uniformdeviate(i*2u))..((i+1)*u,uniformdeviate(i*2u));
endfor;
endfig;

beginfig(4);
  draw ((0,uniformdeviate(0))
    for i:=1 upto 10:
    -- (i*u,uniformdeviate(u*i*2)) endfor);
endfig;

beginfig(5);
  numeric gauss[];
  for i:=1 upto 10:
    gauss[i] := normaldeviate;
  endfor;

  for i:=1 upto 9:
    draw (i*u,gauss[i]*u)..((i+1)*u,gauss[i+1]*u);
  endfor;
endfig;

end

  
