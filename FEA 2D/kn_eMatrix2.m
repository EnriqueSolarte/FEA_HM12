function k=kn_eMatrix2(mech,L,refined)
  
h=mech(1);
v=mech(2);
E=mech(3);
pitch=L/refined;

pts=[[0 0];[pitch 0];[pitch pitch];[0 pitch]];
ke=k_eMatrix(pts,h,v,E);  

Allnames=function_names(refined);
k=fill_k(refined,Allnames,ke);
  
end
