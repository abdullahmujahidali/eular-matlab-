clc,clear,close all

%
t0 = 0; tf = 2; % time span
%
y0 = 0; % y(0) = 0
h = 0.1; % step size
%
t = (t0:h:tf)'; % time vector
n = length(t)-1; % sub-intervals
%
y(1) = y0; % initializing y
%
% euler's
for i=1:n
y(i+1,1) = (y(i)+200000*exp(-t(i+1))*h - exp(t(i+1))*h)/(1+200000*h);
end
%
% displaying results
table(t,y)
plot(t,y,'-o b'),title('HW6-2-b'),xlabel('Time (s)'),ylabel('y')
