function names=function_names(refined)

matrix_names=get_names(refined);

 Vector_names=zeros(refined^2,4);
 index=1;
for j=1:refined
  for i=1:refined
       Vector_names(index,1)= matrix_names(j,i);
       Vector_names(index,2)= matrix_names(j,(i+1));
       Vector_names(index,3)= matrix_names(j+1,i+1);
       Vector_names(index,4)= matrix_names(j+1,i);
       index=index+1;
  end
end 

names=Vector_names;
end
