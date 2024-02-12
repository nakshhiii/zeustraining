clc;
t=0:0.01:10
f=input ('Frequency = ');
A1=sin (2*3.14*f*t)
Dial_Tone=repmat(A1,1,13) 
subplot(511)
plot(Dial_Tone)
title('Dial Tone');
t1=0:0.01:10
A1=sin(2*3.14*f*t1)
B1=zeros(1,500)
C1=zeros(1,5000)
Ringing_Tone=[A1 B1 A1 C1 A1 B1 A1 ]
subplot(512)
plot(Ringing_Tone)
title('Ringing Tone');
x=input('x = ');
t2=0:0.01:((10*x)/0.4)
A2=sin(2*3.14*f*t2)
S2=length(A2)
B2=zeros(1,S2)
Busy_Tone=[ A2 B2 A2 B2 A2]
subplot(513)
plot(Busy_Tone)
title('Busy Tone');
y=input('y = ');
t3=0:0.01:((10*y)/0.4)
A3=sin(2*3.14*f*t3)
S3=length(A3)
S33=round(S3*0.2 )
B3=zeros(1,S33)
Call_in_Progress=[ A3 B3 A3 B3]
subplot(514)
plot(Call_in_Progress)
title('Call_in_Progress Tone');
t0=0:0.01:10
A0=sin(2*3.14*f*t0)
Number_Unobtainable=repmat(A0,1,13)
subplot(515)
plot(Number_Unobtainable)
title('Number Unobtainable Tone');
