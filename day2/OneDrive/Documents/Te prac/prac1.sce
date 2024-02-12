clc; 
n=input('No of Entities = '); 
y=(n*(n-1)/2); 
str1=sprintf(' No. of Links required = %d ',y); disp(str1); 
 
for i=1:1000 x(i)=i; 
y(i)=((i*(i-1))/2); 
 
end 
plot(x,y); 
xlabel('No of Entities'); ylabel('Required Point to Point Links'); 
title('Entities vs. Point to Point Links for Fully Connected Network');
