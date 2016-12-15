clc; clear all;

h=0.01;
v=0.25;
E=200e9;

pts=[[0 0];[10 0];[10 10];[0 10]];
k=k_eMatrix(pts,h,v,E)
f=f_eMatrix(pts)