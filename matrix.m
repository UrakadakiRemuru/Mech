function T=matrix(N,K,T_xa_0,T_xb_t,del_t,A,B,C)
T=zeros(K,N);
for i=K:-1:1
    T(i,1)=0;
    T(i,N)=T_xb_t(i);
end
for j=N:-1:1
    T(K,j)=T_xa_0(j);
end
for k=K-1:-1:1
    T=Thomas_algorithm(A,B,C,N,k,T,del_t);
end
end
