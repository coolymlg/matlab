function y = lab3_demo2(t)
t=0:0.01:6.5; %definesim kopigo t
%% Parejas laikus izteiksim ar datu filtraciju


%t_saw= 0:0.01:0.5;
t_saw_f=(t>=0)&(t<0.5);
t_saw=t(t_saw_f);
k=(1-0)/(0-0.5);
delay=0.5;
y_saw=k*(t_saw-delay);
hold on

%t_zero=0.5:0.1:5;
t_zero_f=(t>=0.5)&(t<1.5);
t_zero= t(t_zero_f);
y_zero=zeros(size(t_zero));

%t_sin=1.5:0.01:3.5;
t_sin_f=(t>=1.5)&(t<3.5);
t_sin=t(t_sin_f);
a0=0; a=1.5; T=(3.5-1.5)/2;f=1/T;
delay=1.5;
y_sin=a0+a*sin(2*pi*f*(t_sin-delay));
axis([0 6.5 -2 2]);

%t_const=3.5:0.01:4.5;
t_const_f=(t>=3.5)&(t<5);
t_const=t(t_const_f);
y_const=1.5+zeros(size(t_const));

%t_noise=4.5:0.01:6;
t_noise_f=(t>=5)&(t<6);
t_noise=t(t_noise_f);
y_noise=1.5*rand(size(t_noise))-0.75;

t=[t_saw,t_zero,t_sin,t_const,t_noise];
y=[y_saw,y_zero,y_sin,y_const,y_noise];
if nargout == 0
plot(t,y)
y=[];
end
%% sinusoida
%plot(t_sin,y_sin,'b')
%axis([xmin xmax ymin ymax])
%% lineari mainigais signals
%k=(yA-yB)/(tA-tB)
%plot(t_saw,y_saw,'b')
%% Nullse signals
%plot(t_zero,y_zero)
%% Konstantes signals
%plot(t_const,y_const,'b')
%plot(t2_const,y2_const,'b')
%plot(t3_const,y3_const,'b')
%plot(t3_const+1,y3_const,'b')
%% Troksnas signals
%plot(t_noise,y_noise,'b')
%% Visu signalu apvienosana
