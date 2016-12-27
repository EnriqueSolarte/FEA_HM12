function k=kn_Matrix(mech,L,refined)  
%% Parametres

h=mech(1);
v=mech(2);
E=mech(3);
pitch=L/refined; %geometric step between each element
pts=[[0 0];[pitch 0];[pitch pitch];[0 pitch];]; %coordinates of an element element
%% Getting ke stiffness matrix
ke=ke_Matrix(pts,h,v,E);  

%% Assambled K matrix condisidereing each node
Allnames=function_names(refined);
k=fill_k(refined,Allnames,ke);
  
end
