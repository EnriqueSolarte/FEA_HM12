function [F, K]=crossoffK(K,F,N)

for i=1:length(N)
    j(2*i-1,1)=2*N(i)-1;
    j(2*i,1)=2*N(i);
end

for k=1:length(j)
    K(j(k)-(k-1),:)=[];
    K(:,j(k)-(k-1))=[];
    F(j(k)-(k-1),:)=[];
end