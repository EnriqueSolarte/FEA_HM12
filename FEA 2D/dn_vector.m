function D=dn_vector(U,N,R)

for i=1:R
    D(i,:)=0;
end

for j=1:length(N)
    k(2*j-1,1)=2*N(j)-1;
    k(2*j,1)=2*N(j);
end

U(length(U)+1)=0;
k(length(k)+1)=0;

m=1;
l=1;

for j=1:R
    if j==k(m)
        D(j)=0;
        m=m+1;
    else
        D(j)=U(l);
        l=l+1;
    end
end
