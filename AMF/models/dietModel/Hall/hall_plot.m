% Hall
t = linspace(0,16,100);
t1 = [3 10];
x1 = [11.3+1.35 12.9+1.35];
ee3 = Hall(t, 3);
ee2 = Hall(t, 2);
ee4 = Hall(t, 4);
ee909 = Hall(t, 0.909);
plot(t,ee2, '--k', t, ee3, '-k', t, ee4, '--k',t, ee909, '--b', t1, x1, 'or', 'LineWidth', 2);
xlabel('Time on HFD (weeks)')
ylabel('Energy Expenditure (kcal/day)')