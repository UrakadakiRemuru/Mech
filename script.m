N=10;
K=10;
x_a=0;
x_b=0.6;
t_a=0;
t_b=0.01;
[x_n,t_k,h,del_t]=Grid(N,K,x_a,x_b,t_a,t_b);
T_xa_0=T_xa_0(x_n,N);
T_xb_t=T_xb_t(t_k,K);
T=matrix(N,K,T_xa_0,T_xb_t,del_t,h);

figure
surf(x_n,t_k,T);
colorbar;
xlabel("Coordinate");
ylabel("Time");
zlabel("Temperature");
title("Explicit");

figure
plot(x_n,T(3,:),'m',x_n,T(5,:),'b',x_n,T(7,:),'y');
hold on;
xlabel("Coordinate");
ylabel("Temperature");
legend("t=3","t=5","t=7");
title("Cut. Explicit");
grid on;