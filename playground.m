omega = 100; 
x = linspace(0, 2 * pi, 100);
w1 = sin(omega * x);
w2 = sin(omega * x + pi);

% calculatePhaseShift(w1, w2, omega)
correlation = xcorr(w1, w2);
figure
hold on
plot(correlation)
% plot(x,w1)
% plot(x,w2)
hold off





