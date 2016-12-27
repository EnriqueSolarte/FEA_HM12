function fe=fe_eMatrix(L)
%% Defining right side
s=1;
h=0.01;
%% Defining Gauss ponit

w=1;
x=[-0.5773 0.5773];
%% Getting ELementary Distributed Force

Ft=0;
for i=1:2 
    t=x(i);
    N2=(1+s)*(1-t)/4;
    N3=(1+s)*(1+t)/4;

    Ft=Ft+[N2 0;0 N2;N3 0;0 N3]*[1.5-0.5*t;0]*h*L/2*w;
end
fe=[Ft(1,1);Ft(3,1)];
end