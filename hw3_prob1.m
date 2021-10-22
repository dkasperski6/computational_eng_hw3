function hw3_prob1()

%- Explicit Cases -%

% h = 1
dt = 1;
t = 0:dt:20;
fy = exp(-0.5*t);
exY(1) = 1;

subplot(2,2,1)
plot(fy, 'k');
hold on;
N = length(t);

for i = 2:N
   exY(i) = exY(i-1)-0.5*exY(i-1)*dt;
end
plot(exY, 'r o');
title('Exact vs Explicit (h = 1)');
xlabel('t');
ylabel('y(t)');

% h = 4.2
dt2 = 4.2;
t = 0:dt2:20;
fy = exp(-0.5*t);
exY2(1) = 1;
N = length(t);

subplot(2,2,2)
plot(fy, 'k');
hold on;

for i = 2:N
   exY2(i) = exY2(i-1)-0.5*exY2(i-1)*dt2;
end
plot(exY2, 'r o');
title('Exact vs Explicit (h = 4.2)');
xlabel('t');
ylabel('y(t)');

%- Implicit cases -%

% h = 1
dt3 = 1;
t = 0:dt3:20;
fy = exp(-0.5*t);
imY(1) = 1;

subplot(2,2,3)
plot(fy, 'k');
hold on;
N = length(t);

for i = 2:N
   imY(i) = imY(i-1)/(1+0.5*dt3);
end
plot(imY, 'b o');
title('Exact vs Implicit (h = 1)');
xlabel('t');
ylabel('y(t)');

% h = 4.2
dt4 = 4.2;
t = 0:dt4:20;
fy = exp(-0.5*t);
imY2(1) = 1;

subplot(2,2,4)
plot(fy, 'k');
hold on;
N = length(t);

for i = 2:N
   imY2(i) = imY2(i-1)/(1+0.5*dt4);
end

plot(imY2, 'b o');
title('Exact vs Implicit (h = 4.2)');
xlabel('t');
ylabel('y(t)');

end

