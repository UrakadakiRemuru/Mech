function [A,B,C]=coef(N,del_t,h)
    A=size(N,1);
    B=size(N,1);
    C=size(N,1);
    B(1)=1;
    B(N)=1;
    A(N)=0;
    A(1)=0;
    C(1)=0;
    C(N)=0;
    for i=2:N-1
        A(i)=-1/h^2;
        C(i)=-1/h^2;
        B(i)=(h^2+2*del_t)/(del_t*h^2);
    end
    
end