clc; clear all;

x1=0;y1=0;
x2=10;y2=0;
x3=10;y3=10;
x4=0;y4=10;


pts=[x1 y1;x2 y2;x3 y3;x4 y4];
%%
B1=B_function(-0.5773,-0.5773,pts)
B2=B_function(-0.5773,0.5773,pts)
B3=B_function(0.5773,0.5773,pts)
B4=B_function(0.5773,-0.5773,pts)


D=[32 8 0;8 32 0;0 0 12];
J=100/4
k=(B1'*D*B1+B2'*D*B2+B3'*D*B3+B4'*D*B4)



