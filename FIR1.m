% visualization_demo.m
clc;
clear;
close all;

% Generate data
x = linspace(0, 10, 1000);

y1 = sin(x);
y2 = cos(x);

% Figure 1 - Multiple line plots
figure(1);

subplot(2,1,1);
plot(x, y1, 'b', 'LineWidth', 2);
grid on;
title('Sine Wave');
xlabel('Time');
ylabel('Amplitude');

subplot(2,1,2);
plot(x, y2, 'r', 'LineWidth', 2);
grid on;
title('Cosine Wave');
xlabel('Time');
ylabel('Amplitude');

% Figure 2 - Scatter plot
figure(2);
scatter(y1, y2, 20, x, 'filled');
colorbar;
grid on;
title('Scatter Plot');
xlabel('sin(x)');
ylabel('cos(x)');

% Figure 3 - 3D Surface
[X, Y] = meshgrid(-5:0.1:5, -5:0.1:5);
Z = sin(sqrt(X.^2 + Y.^2));

figure(3);
surf(X, Y, Z);
shading interp;
colormap jet;
colorbar;
title('3D Surface Plot');
xlabel('X');
ylabel('Y');
zlabel('Z');

% Figure 4 - Contour Plot
figure(4);
contourf(X, Y, Z, 20);
colorbar;
title('Contour Plot');
xlabel('X');
ylabel('Y');
