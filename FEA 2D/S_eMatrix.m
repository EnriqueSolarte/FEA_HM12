function eStress=S_eMatrix(mech,L,refined,de)


pitch=L/refined;

D=D_matrix(mech(2),mech(1));

for j=0:refined-1
    y0=j*pitch;
    for i=0:refined-1 
    
        x0=i*pitch;
        x1=x0+pitch;
        y1=y0+pitch;
        pts=[[x0 y0];[x1 y0];[x1 y1];[x0 y1]];
        eStress=D*B_function([0,0],pts)*de;

    end 
    x0=0;
end
  
end