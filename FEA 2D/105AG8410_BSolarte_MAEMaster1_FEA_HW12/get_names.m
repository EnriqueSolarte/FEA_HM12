function matrix_names=get_names(refined)

matrix_names=zeros(refined+1);
for j=1:refined+1
  for i=1:refined+1   
        matrix_names(j,i)=(refined+1)*(j-1)+i;
  end
end
 
if(refined==1)
     matrix_names=[1 2; 4 3];
end

end