function vect=point2D(geomPos,isoParametric)
x=geomPos(1,1);
y=geomPos(1,2);
s=isoParametric(1,1);
t=isoParametric(1,2);
w=isoParametric(1,3);

vect=[x y s t w];
end