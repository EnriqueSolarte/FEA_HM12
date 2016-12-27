function J=J_jacobian(s,t,points)

x1=points(1,1);y1=points(1,2);
x2=points(2,1);y2=points(2,2);
x3=points(3,1);y3=points(3,2);
x4=points(4,1);y4=points(4,2);

J=(1/8)*[x1,x2,x3,x4]*[[0 1-t t-s s-1];[t-1 0 s+1 -s-t];[s-t -s-1 0 t+1];[1-s s+t -t-1 0]]*[y1;y2;y3;y4];
J=det(J);
end