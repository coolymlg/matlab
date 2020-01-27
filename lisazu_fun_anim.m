function lisazu_fun_anim(f1,f2)
% Skripts kas uzzima Lisazu figuras
% call
% lisazu_fun_anim(f1,f2)
% 27.01.2020
% autors students
t=0:0.01:1;
%f1=2; f2=1;
for faze=0:pi/100:2*pi
    x= cos(2*pi*f1*t+faze);
    y=sin(2*pi*f2*t);
    plot(x,y)
    pause(0.03)
end
shg