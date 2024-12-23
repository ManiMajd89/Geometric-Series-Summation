% Geometric Series: Analytical vs Partial Sum
% Author: Mani Majd
% Source: ESC103 Lab 1
% Date: November 2024
% Description:
%   This script calculates and compares the analytical area and partial sums 
%   of a geometric series. It also visualizes the results using a plot.

%% Section 1: Analytical Calculation
a = 1; % Initial term
r = 1/4; % Common ratio
area_analytical = a / (1 - r); % Analytical sum of the infinite series

%% Section 2: Partial Sum Calculation Using a Loop
series_sum = zeros(1, 20); % Initialize partial sum array
series_sum(1) = a; % First term of the series

for idx = 2:20
    series_sum(idx) = series_sum(idx - 1) + a * (r^(idx - 1));
end

disp('Partial sum using loop:');
disp(series_sum);

%% Section 3: Partial Sum Calculation Without Loop
k = 1:20; % Array for k values
series_sum2 = a * (1 - r.^k) ./ (1 - r); % Vectorized computation

disp('Partial sum without loop:');
disp(series_sum2);

%% Section 4: Plotting Results
figure;
plot(series_sum, '.b', 'MarkerSize', 20); % Plot partial sums
hold on;
y = ones(1, 20) .* area_analytical; % Analytical area as a constant line
plot(y, '-r', 'LineWidth', 2);
title('Area: Analytical vs Partial Sum');
xlabel('Distinct Points');
ylabel('Partial Sum');
legend('Partial Sum', 'Analytical Area','Location', 'southeast')