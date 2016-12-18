clc; clear all;

h=0.01;
v=0.25;
E=100;
L=10;
refined=2;

K=kn_eMatrix2([h v E],L,refined)
N=[3;2]

ke_aux=zeros(2*(refined+1)^2+1)
ke_aux(2:length(ke_aux),1:length(ke_aux)-1)=K;


    ke_aux(1,1:2:2*(refined+1)^2)=1:(refined+1)^2;
    ke_aux(2:2:2*(refined+1)^2,length(ke_aux))=1:(refined+1)^2;
    ke_aux
% 
% k=zeros(2*(refined+1)^2-2*length(N));
% 
% for i=1:length(N)
%       K(N(i)*2-1,:)=[];
%       K(N(i)*2-1,:)=[];
%       K(:,N(i)*2-1)=[];
%       K(:,N(i)*2-1)=[];
%    K
% end