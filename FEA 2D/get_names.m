function names=get_names(Allnames,flag)

count=0;
address=zeros(1,1);
for j=1:length(Allnames)
    for i=1:4
        if(Allnames(j,i)==flag)
            address(count+1)=j;
            count=count+1;
        end 
    end
end

names=zeros(count,4);
names(:,:)=Allnames(address(:),:);

end