function [x_n,t_k,h,del_t] = Grid(N,K,x_a,x_b,t_a,t_b)
x_n=[];
t_k=[];
h=(x_b-x_a)/(N-1);
del_t=(t_b-t_a)/(K-1);

    for i=0:N-1
       x_n(i+1)=i*h; 
    end
    for i=0:K-1
        t_k(i+1)=i*del_t;
    end
end

