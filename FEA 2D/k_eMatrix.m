function k=k_eMatrix(cordinates,h,v,E)

p1=cordinates(1,1:2);
p2=cordinates(2,1:2);
p3=cordinates(3,1:2);
p4=cordinates(4,1:2);

pts=[p1;p2;p3;p4];

%%
gauss_p=[0.5773, 1];
B1=B_function([-gauss_p(1),-gauss_p(1)],pts)*J_jacobian_ST(-gauss_p(1),-gauss_p(1),pts)*gauss_p(2)*h*gauss_p(2);
B2=B_function([-gauss_p(1),gauss_p(1)],pts)*J_jacobian_ST(-gauss_p(1),gauss_p(1),pts)*gauss_p(2)*h*gauss_p(2);
B3=B_function([gauss_p(1),-gauss_p(1)],pts)*J_jacobian_ST(gauss_p(1),-gauss_p(1),pts)*gauss_p(2)*h*gauss_p(2);
B4=B_function([gauss_p(1),gauss_p(1)],pts)*J_jacobian_ST(gauss_p(1),gauss_p(1),pts)*gauss_p(2)*h*gauss_p(2);

D=D_matrix(E,v);

k=(B1'*D*B1+B2'*D*B2+B3'*D*B3+B4'*D*B4);
end
