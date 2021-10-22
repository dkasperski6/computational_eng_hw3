function hw3_prob3()

dt = 0.1; %h = 0.1
t = 0:dt:20;
fy = exp(sqrt(-1)*t);
yinit = 1;

subplot(2,3,1);
plot(fy, 'k');
hold on;
N = length(t);
exY(1) = yinit;
for i = 2:N
   exY(i) = exY(i-1)+sqrt(-1)*exY(i-1)*dt;
end
plot(exY, 'r--');
title('Exact vs Explicit (h = 0.1)');
ylim([-2 2]);
xlim([-3 3]);
legend('Exact','Explicit');

subplot(2,3,2);
plot(fy, 'k');
hold on;
N = length(t);
y_RK2(1) = yinit;
for i = 2:N
 %Step -1 
 w_tildle = y_RK2(i-1) + dt *(sqrt(-1)*y_RK2(i-1));
 % Step - 2
 y_RK2(i) = y_RK2(i-1) + dt *(0.5*(sqrt(-1)*y_RK2(i-1))+0.5*(sqrt(-1)*w_tildle))
end
plot(y_RK2,'r--');
ylim([-2 2]);
xlim([-3 3]);
title('Exact vs 2nd Order Runge-Kutta method (h = 0.1)');
legend('Exact','2nd Order Runge-Kutta');

subplot(2,3,3);
plot(fy, 'k');
hold on;
N = length(t);
y_RK2_B(1) = yinit;
for i = 2:N
 %Step -1 
 w_tildle = y_RK2_B(i-1) + (2/3)* dt *(sqrt(-1)*y_RK2_B(i-1));
 % Step - 2
 y_RK2_B(i) = y_RK2_B(i-1) + dt *( 0.25*(sqrt(-1)*y_RK2_B(i-1))+ 0.75*(sqrt(-1)*w_tildle));
end
plot(y_RK2_B,'r--');
ylim([-2 2]);
xlim([-3 3]);
title('Exact vs 4th Order Runge-Kutta (h = 0.1)');
legend('Exact','4th Order Runge-Kutta');

subplot(2,3,5);
plot(fy, 'k');
hold on;
y_AB(1) = yinit;
%Supply the solution from Runge-Kutta 2nd order
y_AB(2) = y_RK2(2);
for i=3:N
 y_AB(i) = y_AB(i-1) + (3/2)*dt * (-0.5 * y_AB(i-1)) - (1/2)*dt * (-0.5 * y_AB(i-2));
end
plot(y_AB,'r--');
ylim([-2 2]);
xlim([-3 3]);
title('Exact vs Adam Bashforth method (h = 0.1)');
legend('Exact','AB method');

end
