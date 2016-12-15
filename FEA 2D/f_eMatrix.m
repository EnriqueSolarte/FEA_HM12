function f=f_eMatrix(cordinates)

s=1;
h=0.01;
L=cordinates(3,2)-cordinates(2,2);

w=1;
x1=-0.5773;
x2=0.5773;

t=x1;
N2=(1+s)*(1-t)/4;
N3=(1+s)*(1+t)/4;

Ft=[0 0;0 0;N2 0;0 N2;N3 0;0 N3;0 0;0 0]*[1.5-0.5*t;0]*h*L/2*w;

t=x2;
N2=(1+s)*(1-t)/4;
N3=(1+s)*(1+t)/4;
f=[0 0;0 0;N2 0;0 N2;N3 0;0 N3;0 0;0 0]*[1.5-0.5*t;0]*h*L/2*w+Ft;
