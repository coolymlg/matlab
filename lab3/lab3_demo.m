%% sinusoida
t_sin=1.5:0.01:3.5;
a0=0; a=1.5; T=(3.5-1.5)/2;f=1/T;
delay=1.5;
y_sin=a0+a*sin(2*pi*f*(t_sin-delay));
%plot(t_sin,y_sin,'b')
%axis([xmin xmax ymin ymax])
axis([0 6.5 -2 2]);
%% lineari mainigais signals
t_saw= 0:0.01:0.5;
%k=(yA-yB)/(tA-tB)
k=(1-0)/(0-0.5);
delay=0.5;
y_saw=k*(t_saw-delay);
hold on
%plot(t_saw,y_saw,'b')
%% Nullse signals
t_zero=0.5:0.1:5;
y_zero=zeros(size(t_zero));
%plot(t_zero,y_zero)
%% Konstantes signals
t_const=3.5:0.01:4.5;
y_const=1.5+zeros(size(t_const));
%plot(t_const,y_const,'b')
t2_const=0.5:0.01:1.5;
y2_const=0+zeros(size(t2_const));
%plot(t2_const,y2_const,'b')
y3_const=0:0.01:1.5;
t3_const=3.5+zeros(size(y3_const));
%plot(t3_const,y3_const,'b')
%plot(t3_const+1,y3_const,'b')
%% Troksnas signals
t_noise=4.5:0.01:6;
y_noise=1.5*rand(size(t_noise))-0.75;
%plot(t_noise,y_noise,'b')
%% Visu signalu apvienosana
t=[t_saw,t_zero,t_sin,t_const,t2_const,t3_const,t_noise]
y=[y_saw,y_zero,y_sin,y_const,y2_const,y3_const,y_noise]
plot(t,y)