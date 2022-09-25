function [T] = Thomas_algorithm(A,B,C,N,k,T,del_t)
P=[];
Q=[];
F=[];
P(1)=-C(1)/B(1);
P(N)=0;
F(1)=T(k,1);
Q(1)=F(1)/B(1);   
F(N)=T(k,N);
for i=2:N-1
    F(i)=(1/del_t)*T(k+1,i);
    P(i)=-C(i)/(B(i)+A(i)*P(i-1));
end
for j=2:N
    Q(j)=(F(j)-A(j)*Q(j-1))/(A(j)*P(j-1)+B(j));
end
T(k,N)=Q(N);
for m=N-1:-1:1
    T(k,m)=P(m)*T(k,m+1)+Q(m);
end
end


