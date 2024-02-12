clc;
N=input ('Enter the no. of hours of consideration for Traffic Engineering = ');
for i=1:N
y(i)=input(' Enter the no. of calls in particular hour =');
end
bar(y)
xlabel('Hours');
ylabel('Number of calls');
title('Busy hour calling');
