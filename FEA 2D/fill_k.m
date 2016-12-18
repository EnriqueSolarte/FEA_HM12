function k=fill_k(refined,Allnames,ke)

ke_aux=zeros(9);
ke_aux(2:9,1:8)=ke;


k=zeros(2*(refined+1)^2);

for i=1:length(Allnames(:,1))
    names=Allnames(i,:);
    ke_aux(1,1:2:8)=names;
    ke_aux(2:2:8,9)=names;
    for i=1:2:7
%         i
    for j=2:2:9
%         j
        ik=ke_aux(1,i)*2-1;
        jk=ke_aux(j,9)*2-1;
        k(jk,ik)=k(jk,ik)+ke_aux(j,i);
        k(jk,ik+1)=k(jk,ik+1)+ke_aux(j,i+1);
        k(jk+1,ik)=k(jk+1,ik)+ke_aux(j+1,i);
        k(jk+1,ik+1)=k(jk+1,ik+1)+ke_aux(j+1,i+1);
    end
    end

    
end
end
