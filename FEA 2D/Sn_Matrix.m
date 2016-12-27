function stress=Sn_Matrix(mech,L,refined,d)

Allnames=function_names(refined);
de=zeros(8,1);
stress=zeros(3,refined^2);

for i=1:refined^2
    de(:,1)=[d(2*Allnames(i,1)-1,1); d(2*Allnames(i,1),1)
            d(2*Allnames(i,2)-1,1); d(2*Allnames(i,2),1)
            d(2*Allnames(i,3)-1,1); d(2*Allnames(i,3),1)
            d(2*Allnames(i,4)-1,1); d(2*Allnames(i,4),1)]; 
       
     stress(:,i)=S_eMatrix(mech,L,refined,de);
end
    
end