clear, clc
clc; clear all;

h=0.01;
v=0.25;
E=100;
L=10;
refined=1;

k=kn_eMatrix2([h v E],L,refined);
nodes=get_names(refined);
f=fn_eMatrix(nodes(:,length(nodes)),L,refined);

[F K]=crossoffK(k,f,nodes(:,1));
U=pinv(K)*F

N=[1,3]
R=2*(refined+1)^2;


D=dn_matrix(U,N,R)
