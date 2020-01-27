function createfigure(X1, Y1)
%CREATEFIGURE(X1, Y1)
%  X1:  stairs x
%  Y1:  stairs y

%  Auto-generated by MATLAB on 27-Jan-2020 09:15:56

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create stairs
stairs(X1,Y1,'LineWidth',30,'LineStyle',':');

box(axes1,'on');
