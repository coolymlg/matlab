%% 3. Laboratorijas darbs
%% Merijumu datu apstrade
%%Merki
%*Iemacities taisit grafiku no bildes
%*Iemacities konstruet grafikus
%% Darba programma:
%%Troksnas signals

t_noise=0:0.01:1;
y_noise=0.5*rand(size(t_noise))-0.2;

%%Nullse signals

t_zero=1:0.1:2.5;
y_zero=zeros(size(t_zero));
t2_zero=2.5:0.1:4;
y2_zero=0.5+zeros(size(t_zero));

%%Lineari mainigais signals
%k=(yA-yB)/(tA-tB)

t_saw= 4:0.01:5.5;
k=(1.5+1.5)/(4-5.5);
delay=4.75;
y_saw=k*(t_saw-delay);

%%Sinusoida

t_sin=5.5:0.01:7.5;
a0=0; a=0.5; T=(3.5-1)/2;f=2.81/T;
delay=1.5;
y_sin=a0+a*sin(2*pi*f*(t_sin-delay));

%%Visu signalu apvienosana
t=[t_noise,t_zero,t2_zero,t_saw,t_sin,];
y=[y_noise,y_zero,y2_zero,y_saw,y_sin];
plot(t,y,'b','LineWidth',1.3);
axis([0 8 -2 2]);
grid
%%
%
% <<../signals.jpg>>
%
%%
%% Secinajumi
%Secinajuma varu pateikt kas es esmu iemacijies konstruet grafikus no
%bildes bez citas programmas palidzibu.