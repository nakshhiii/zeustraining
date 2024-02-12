clc;
M=input ('Enter number of multiplexed channels = '); Tm = ((125)*(10^3))/(2*M);
disp('Maximum access time for the data and control memories in TSI switch in ns = '); disp(Tm)
C = (2*M);
disp('Cost of a TSI switch = '); disp(C)
CA = (M^2)/C;
disp('Cost advantage of a TSI switch = '); disp(CA)

for i=2000:3000 M(i)=i;
C(i)= (2*M(i));
CA(i) = (M(i)^2)./C(i)
end

subplot(211) plot(C, M);
xlabel('Cost of a TSI Switch'); ylabel('No. of Multiplexed Channels');
title('Cost of a TSI Switch vs. No. of Multiplexed Channels');

subplot(212) plot(CA, M);
xlabel('Cost Advantage of TSI Switch '); ylabel('No. of Multiplexed Channels');
title('Cost Advantage of TSI Switch vs. No. of Multiplexed Channels');
