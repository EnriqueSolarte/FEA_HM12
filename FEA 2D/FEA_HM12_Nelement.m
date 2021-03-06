%FINITE ELEMENT ANALYSIS 
%ID: 105AG8410
%Name: Bol�var Solarte
%Date:21/12/2016 

clc; clear all;

h=0.01; %thickness
v=0.25; %Poisson ratio
E=30e6; %Young's module
L=10; %longitude ID student

refined=2; %number of refined elements


%% K matrix

k=kn_eMatrix2([h v E],L,refined);
%% Vector Forces 

nodes=get_names(refined);
f=fn_eMatrix(nodes(:,length(nodes)),L,refined);

%% Crossoff K and F matrix
[F K]=crossoff_kn(k,f,nodes(:,1));

%% Dispasaments 

D=inv(K)*F;
d=dn_vector(D,nodes(:,1),2*(refined+1)^2);

%% Strain-Stresses 
stress=Sn_Matrix([v E],L,refined,d);

