function T=matrix(N,K,T_xa_0,T_xb_t,del_t,h)
T=zeros(K,N);
for i=K:-1:1
    T(i,1)=0;
    T(i,N)=T_xb_t(i);
end
for j=N:-1:1
    T(K,j)=T_xa_0(j);
end
for k=K-1:-1:1
    for i=2:N-1
        T(k,i)=(del_t/h^2)*(T(k+1,i-1)-2*T(k+1,i)+T(k+1,i+1))+T(k+1,i);
    end
end
end