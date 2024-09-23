clc;
clear;
clf;
close;
x=[1 2 1 2];
Lx=length(x);
x_ind=[0:3];
h=[3 2 1 2];
Lh=length(h);
h_ind=[-1:2];
Ly=Lx+Lh-1;
y_min_ind=min(x_ind)+min(h_ind);
y_max_ind=max(x_ind)+max(h_ind);
y_ind=y_min_ind:y_max_ind;
x_new=[x,zeros(1,Ly-Lx)];
h_new=[h,zeros(1,Ly-Lh)];
for n=0:Ly-1
    sum=0;
for k=0:n
    sum=sum+x_new(k+1)*h_new(n-k+1);
end
y(n+1)=sum;
end
plot(y_ind,y);
disp(y);