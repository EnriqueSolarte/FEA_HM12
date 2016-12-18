clc; clear all

refined=2;
L=10;
nodes=[3;6;9];

fe=fe_eMatrix(L/refined)
f=zeros(2*(refined+1)^2,1);

for i=1:refined
    f(nodes(i,1)*2-1,1)= f(nodes(i,1)*2-1,1)+fe(1);
    f(nodes(i+1,1)*2-1,1)=  f(nodes(i+1,1)*2-1,1)+fe(2);
end
f