clc;
t=0:0.0001:0.019
f=50
A=squarewave(2*3.14*f*t);
B=squarewave(2*3.14*f*t,33);
C=squarewave(2*3.14*f*t,33)+1;
D=(squarewave(2*3.14*f*t,33)+1)/2;
E1=ones(1,2500)
E2=zeros(1,50)
E =[E1 E2]
for i=1:3
y(i)=input('Enter the digit = ')
end
AZ= [repmat(D,1,y(1)) E repmat(D,1,y(2)) E repmat(D,1,y(3)) E ]
plot(AZ)
xlabel('Time');
ylabel('Magnitude');
title('Pulse Waveforms of Dialed Digits');
