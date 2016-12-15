function k=k_eMatrix(cordinates,h,v,E)

p1=cordinates(1,1:2);
p2=cordinates(2,1:2);
p3=cordinates(3,1:2);
p4=cordinates(4,1:2);

pts=[p1;p2;p3;p4];

%%

B1=B_function([-0.5773,-0.5773,1,1],pts,h);
B2=B_function([-0.5773 0.5773 1 1],pts,h);
B3=B_function([0.5773 -0.5773 1 1],pts,h);
B4=B_function([0.5773 0.5773 1 1],pts,h);

D=D_matrix(E,v);

k=B1'*D*B1+B2'*D*B2+B3'*D*B3+B4'*D*B4;
end
