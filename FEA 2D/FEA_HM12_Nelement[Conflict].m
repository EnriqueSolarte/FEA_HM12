clc; clear all;

h=0.01;
v=0.25;
E=200e9;
L=10;

k=kn_eMatrix2([h v E],L,3);
% kn=kn_eMatrix([h v E],L,2); matrix in array 3x

