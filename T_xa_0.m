function T_xa_0= T_xa_0(x,N)
T_xa_0=zeros(N,1);
for i=1:N
    T_xa_0(i)=3*x(i)*(2-x(i));
end
end