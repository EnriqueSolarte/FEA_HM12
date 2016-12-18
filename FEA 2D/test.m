clc; clear all

refined=2;
h=0.01;
v=0.25;
E=200e9;
L=10;

pitch=L/refined;

pts=[[0 0];[pitch 0];[pitch pitch];[0 pitch]];
ke=k_eMatrix(pts,h,v,E);  
ke_aux=zeros(9);
ke_aux(2:9,1:8)=ke;
Allnames=function_names(refined);

k=zeros((refined+1)^2);

for i=1:length(Allnames)
    names=Allnames(i,:)
    ke_aux(1,1:2:8)=names;
    ke_aux(1:2:8,9)=names;
end

