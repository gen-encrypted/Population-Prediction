%filename 'population.xls' for original project.

filename=input('Enter the file name ');
year=xlsread(filename,'A:A'); 
population=xlsread(filename,'B:B'); 
tic

stepsize=input('Enter the step size in years ');
p = polyfit(year,population,1);
y_expected1 = 1960:stepsize:2050;
yx1 = polyval(p,y_expected1);

plot(year,population,'o-',y_expected1,yx1,'r:')
title( ['For stepsize ' , num2str(stepsize)]);
xlabel year
ylabel population
legend('real','predicted');
toc

%predicted year for stepsize 1
while(1)
in=input('Enter the year you want to see the predicted population, Press ctrl + c to terminate program');
predicted_year=p(1)*(in)+p(2);
display (predicted_year)
end



