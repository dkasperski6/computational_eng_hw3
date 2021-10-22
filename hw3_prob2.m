function hw3_prob2()

%----h = 1----%
dt = 1;
t = 0:dt:1;
y=zeros(1,length(t));
y(1) = 0.5; %y(0) = 0.5
N = length(t);

for i = 2:N
    y(i) = y(i-1)+0.5*dt*(2*(y(i-1)-y(i-1).^2)+y(i-1)*dt); 
end

ydir = 1./(1+exp(-t)); %trapz y direct

subplot(2,3,1);
plot(t,y,'b--',t,ydir,'k:');
legend('Linear','Direct');
ylim([0.5 1]);
title('Linearized vs Direct (h = 1)');


%----h = 0.1----%
dt = 0.1;
t = 0:dt:1;
y=zeros(1,length(t));
y(1) = 0.5; %y(0) = 0.5
N = length(t);

for i = 2:N
    y(i) = y(i-1)+0.5*dt*(2*(y(i-1)-y(i-1).^2)+y(i-1)*dt); 
end

ydir = 1./(1+exp(-t)); %trapz y direct

subplot(2,3,2);
plot(t,y,'b--',t,ydir,'k:');
legend('Linear','Direct');
ylim([0.5 1]);
title('Linearized vs Direct (h = 0.1)');

%----h = 0.01----%
dt = 0.01;
t = 0:dt:1;
y=zeros(1,length(t));
y(1) = 0.5; %y(0) = 0.5
N = length(t);

for i = 2:N
    y(i) = y(i-1)+0.5*dt*(2*(y(i-1)-y(i-1).^2)+y(i-1)*dt); 
end

ydir = 1./(1+exp(-t)); %trapz y direct

subplot(2,3,3);
plot(t,y,'b--',t,ydir,'k:');
legend('Linear','Direct');
ylim([0.5 1]);
title('Linearized vs Direct (h = 0.01)');


%----h = 0.001----%
dt = 0.001;
t = 0:dt:1;
y=zeros(1,length(t));
y(1) = 0.5; %y(0) = 0.5
N = length(t);

for i = 2:N
    y(i) = y(i-1)+0.5*dt*(2*(y(i-1)-y(i-1).^2)+y(i-1)*dt); 
end

ydir = 1./(1+exp(-t)); %trapz y direct

subplot(2,3,4);
plot(t,y,'b--',t,ydir,'k:');
legend('Linear','Direct');
ylim([0.5 1]);
title('Linearized vs Direct (h = 0.001)');

%----h = 0.0001----%
dt = 0.0001;
t = 0:dt:1;
y=zeros(1,length(t));
y(1) = 0.5; %y(0) = 0.5
N = length(t);

for i = 2:N
    y(i) = y(i-1)+0.5*dt*(2*(y(i-1)-y(i-1).^2)+y(i-1)*dt); 
end

ydir = 1./(1+exp(-t)); %trapz y direct

subplot(2,3,5);
plot(t,y,'b--',t,ydir,'k:');
legend('Linear','Direct');
ylim([0.5 1]);
title('Linearized vs Direct (h = 0.0001)');

%----h = 0.00001----%
dt = 0.00001;
t = 0:dt:1;
y=zeros(1,length(t));
y(1) = 0.5; %y(0) = 0.5
N = length(t);

for i = 2:N
    y(i) = y(i-1)+0.5*dt*(2*(y(i-1)-y(i-1).^2)+y(i-1)*dt); 
end

ydir = 1./(1+exp(-t)); %trapz y direct

subplot(2,3,6);
plot(t,y,'b--',t,ydir,'k:');
legend('Linear','Direct');
ylim([0.5 1]);
title('Linearized vs Direct (h = 0.00001)');

end
