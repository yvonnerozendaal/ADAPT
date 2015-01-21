% Fit body weight data

time = diets.t3/(24*7); % weeks HFD
TG = diets.perTG_m*853/1e6; % g TG

% fit to polynomial
p = polyfit(time, TG, 2); % -0.0649*x^2 + 2.0961*x + 2.5263

% plot polynomial and data
x1 = linspace(0, 12, 100);
y1 = polyval(p,x1);

figure(1);hold on;
plot(time, TG, 'ok', x1, y1, '-k', 'LineWidth', 2);
xlabel('Time on HFD  (weeks)');
ylabel('Body TG  (g)');
saveas(1, 'BW.emf');

% slope at t= 3 = 1.7067 g TG/week
% slope at t=10 = 0.7981 g TG/week

