function T_xa_0= T_xa_0(x,N)
T_xa_0=[];
for i=1:N
    T_xa_0=[T_xa_0 3*x(i)*(2-x(i))];
end
end