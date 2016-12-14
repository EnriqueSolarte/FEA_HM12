clc; clear all;
x1=3;y1=2;
x2=5;y2=2;
x3=5;y3=4;
x4=3;y4=4;


pts=[x1 y1;x2 y2;x3 y3;x4 y4];
%%
B1=B_function(-0.5773,-0.5773,pts)
B2=B_function(0.5773,-0.5773,pts);
B3=B_function(0.5773,0.5773,pts);
B4=B_function(-0.5773,0.5773,pts);



D=[32 8 0;8 32 0;0 0 12];

k=B1'*D*B1+B2'*D*B2+B3'*D*B3+B4'*D*B4