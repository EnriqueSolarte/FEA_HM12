clc; clear all;

p1=[3 2];
p2=[5 2];
p3=[5 4];
p4=[3 4];
h=1;
v=0.25;
E=30e6;

pts=[p1;p2;p3;p4];

%%

B1=B_function([-0.5773,-0.5773,1,1],pts,h)
B2=B_function([-0.5773 0.5773 1 1],pts,h)
B3=B_function([0.5773 -0.5773 1 1],pts,h)
B4=B_function([0.5773 0.5773 1 1],pts,h)

D=D_matrix(E,v);

k=B1'*D*B1+B2'*D*B2+B3'*D*B3+B4'*D*B4




