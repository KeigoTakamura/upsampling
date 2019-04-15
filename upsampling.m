#!/usr/bin/env octave
%2000hz 0-1s

f=10.0;
fs=100;
omega = 2*pi*f;
skip = 3;
n0 =0.0;
nend = 1.0;
n=0:nend;
ts = 1/fs;

x=n0:ts:nend;
y=sin(x*omega);
y_zero=zeros(1,length(x)*(skip+1));
j=1;

for i=1:length(x)
   % disp(i)
    y_zero(j)=y(i);
    for s=1:skip
    j=j+1;
    y_zero(j)=0;
    end
end

x1=1:1:length(y_zero);

%disp(y)
%stem(x,y);
stem(x1,y_zero);
%xlabel('n');
%ylabel('x(n)');

