%% initialize

import AMF.*

model = Model('Model_Diets_YP');
data = DataSet('dietData');

loadGroup(data, 'diets');
initiateExperiment(model, data);

%% config

model.options.useMex       = 1;
model.options.savePrefix   = '';
model.options.odeTol       = [1e-12 1e-12 100];
model.options.numIter      = 10;
model.options.numTimeSteps = 50;
model.options.parScale     = [2 -2];
model.options.seed         = 1;
model.options.SSTime       = 1000;
model.options.lab1         = .1;

parseAll(model);
compileAll(model);

%% run

result = runADAPT(model);


%% plot

% plotAll(result, 'parameters', 'traj');
plotAll(result, 'states', 'mad');
plotAll(result, 'reactions', 'mad');

% random change