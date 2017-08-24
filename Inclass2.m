% Darlan Minussi

%% Inclass assignment 2

% 1. a. fill in this loop with a conditional statement so that it displays
% only the odd numbers


for ii = 1:20 
    if mod(ii,2) == 0        
    else
        disp(ii);
    end
end

% b. Write a new loop to display the same odd numbers which doesn't use a conditional statement
for j = 1:2:20
    disp(j);
end


% c. display the same odd numbers without a loop or conditional (hint use
%  num2str)
num2str(1:2:20);



%% 2. Vectorize the following code (that is produce the same result in z
%without using a loop). 

%a. 

for ii = 1:100
    z(ii) = ii*ii;
end

%a. answer
z = power(1:100, 2);


%b. 
z = 0;
for ii = 1:100
    z = z + ii;
end

%b answer
z = sum(1:100)

%c.
xx = rand(50,2);

for ii = 1:50
    z(ii) = sqrt(xx(ii,1)^2+xx(ii,2)^2);
end

%c answer
z =rssq(xx,2);


% d. what is the formula in c computing?
% Root sum square value
% Squareroot of the square of the ii number for the first column sum  with the square
% root of the ii number for the second column

%% plotting

%a. make a plot of sin(x) and cos(x) vs x from x = 0 to 4*pi on the same axis where the graph
%of sin(x) vs x is a red-dashed line and the graph of cos(x) vs x is a
%blue solid line.

% a. answer
x = 0:4*pi
plot(x, cos(x),'b');
plot(x, sin(x),'--r');



%b. repeat the above but where each graph is in a different subplot in the
% same figure. 

%b. answer
x = 0:4*pi
plot(x, cos(x),'b');
hold on;
plot(x, sin(x),'--r');

%c. here is some data, imagine they are x and y coordinates for cells. 
xy_dat = rand(100,2);
%plot the data in the xy plane.

scatter(xy_dat(:,1), xy_dat(:,2));

%now imagine there is some fluorescence data corresponding to the same
%cells
fluor = rand(100,1);
% plot the data in the xy plane but color code the data by the fluorescnece
% values. Hint: see the scatter command

%c. answer
scatter(xy_dat(:,1), xy_dat(:,2),[], fluor);
