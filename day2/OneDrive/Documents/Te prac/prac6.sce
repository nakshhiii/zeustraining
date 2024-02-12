clc;
y1=input ('Enter the mean time between failure (MTBF) in hours = ')
y2=input ('Enter the mean time to repair (MTTR) in hours = ')
y3 = ((y1) / (y1+y2))
disp('Availability of single processor system =');
disp(y3)
y4=1 - ((y1) / (y1+y2))
disp('Unavailability of single processor system =');
disp(y4)
y5 = (2*(y2).^2) / (y1.^2)
disp('Unavailability of dual processor system =');
disp(y5)
y6 = 1-y5
disp('Availability of dual processor system =');
disp(y6)
for i=1:1000
y2(i)=i;
y3(i)= ((y1) / (y1+ y2(i)));
y6(i)= 1 - (2*(y2(i)).^2) / (y1.^2)
end
subplot(211)
plot(y2, y3);
xlabel('Mean Time to Repair (MTTR)');
ylabel('Availability of Single Processor System');
title('MTTR vs. Availability of Single Processor System');
subplot(212)
plot(y2, y6);
xlabel('Mean Time to Repair (MTTR)');
ylabel('Availability of Dual Processor System');
title('MTTR vs. Availability of Dual Processor System');