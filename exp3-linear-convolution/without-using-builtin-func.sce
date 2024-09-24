x=[1 1 1];
Lx=length(x);
x_ind=[0:3];
h=[123];
Lh=length(h);
h_ind=[-1:2];
Ly=Lx+Lh-1;
x_new=[x, zeros(1, Ly-Lx)];  h_new=[h,zeros(1,Ly-Lh)]:
for n=1:Ly
sum=0;
for k=1:n sum=sum+x_new(k)*h_new(n-k+1);
end
y(n)=sum;
end
disp(y);
