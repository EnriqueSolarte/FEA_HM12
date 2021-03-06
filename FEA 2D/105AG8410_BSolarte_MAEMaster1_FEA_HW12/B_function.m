function B=B_function(gaussPoints,points)

%% Parameters

s=gaussPoints(1);
t=gaussPoints(2);


x1=points(1,1);y1=points(1,2);
x2=points(2,1);y2=points(2,2);
x3=points(3,1);y3=points(3,2);
x4=points(4,1);y4=points(4,2);

%% Defining a b c d paramters

a=0.25*(y1*(s-1)+y2*(-1-s)+y3*(1+s)+y4*(1-s));
b=0.25*(y1*(t-1)+y2*(1-t)+y3*(1+t)+y4*(-1-t));
c=0.25*(x1*(t-1)+x2*(1-t)+x3*(1+t)+x4*(-1-t));
d=0.25*(x1*(s-1)+x2*(-1-s)+x3*(1+s)+x4*(1-s));

%% Defining partial N1 N2 N3 N4 with respect s and t

N_1s=-0.25*(1-t);
N_1t=-0.25*(1-s);

N_2s=0.25*(1-t);
N_2t=-0.25*(1+s);

N_3s=0.25*(1+t);
N_3t=0.25*(1+s);

N_4s=-0.25*(1+t);
N_4t=0.25*(1-s);
%% Builting B1 B2 B3 B4

B1=[a*N_1s-b*N_1t,0;0,c*N_1t-d*N_1s;c*N_1t-d*N_1s,a*N_1s-b*N_1t];
B2=[a*N_2s-b*N_2t,0;0,c*N_2t-d*N_2s;c*N_2t-d*N_2s,a*N_2s-b*N_2t];
B3=[a*N_3s-b*N_3t,0;0,c*N_3t-d*N_3s;c*N_3t-d*N_3s,a*N_3s-b*N_3t];
B4=[a*N_4s-b*N_4t,0;0,c*N_4t-d*N_4s;c*N_4t-d*N_4s,a*N_4s-b*N_4t];

%% Getting Jacobian 

J=J_jacobian(s,t,points);

%% Getting B matrix
B=(1/J)*[B1 B2 B3 B4];
end
