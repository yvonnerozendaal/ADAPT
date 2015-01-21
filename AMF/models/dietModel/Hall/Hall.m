function EE = Hall(t, dEI )
%Energy Expenditure in mice according to Hall
LM = 25;
FM = -0.0649.*t.^2 + 2.0961.*t + 2.5263;

EE = 2.1 + 0.331.*LM + 0.202.*FM + 0.4.*dEI;

end

