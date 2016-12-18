clc; clear all;

h=0.01;
v=0.25;
E=200e9;
L=10;

refined=1;

k=kn_eMatrix2([h v E],L,refined);
nodes=get_names(refined);
f=fn_eMatrix(nodes(:,length(nodes)),L,refined);

[F K]=crossoffK(k,f,nodes(:,1));
D=pinv(K)*F;
d=dn_matrix(D,nodes(:,1),2*(refined+1)^2)
