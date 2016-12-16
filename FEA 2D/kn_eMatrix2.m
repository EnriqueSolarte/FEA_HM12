function k=kn_eMatrix2(mech,L,refined)

h=mech(1);
v=mech(2);
E=mech(3);

y0=0;x0=0;
kn=zeros(8*refined,8*refined);
pitch=L/refined;
index=1;
for j=0:refined-1
    y0=j*pitch;
    
    for i=0:refined-1 
    
        x0=i*pitch;
        x1=x0+pitch;
        y1=y0+pitch;
        pts=[[x0 y0];[x1 y0];[x1 y1];[x0 y1]];
        kn(1:8*(i+1),1:8*(j+1))=k_eMatrix(pts,h,v,E);  
        index=index+1;
    end 
    x0=0;
    
end
k=kn
