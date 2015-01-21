function MODEL = Model_Diets_YP()

MODEL.DESCRIPTION = 'Model to explore glucose lipid interactions in the diet selection experiment.';

MODEL.PREDICTOR = {
    't'  [0 24*7*12] {'time' 'hours' 'Time'}
};

MODEL.CONSTANTS = {
};

MODEL.PARAMETERS = {
% name fit init_value bnd meta-data
    'k1'  1 1  [] {}
    'k2'  1 1  [] {}
    'k3'  1 1  [] {}
    'k4'  1 1  [] {}
    'k5'  1 1  [] {}
    'k6'  1 1  [] {}
    'k7'  1 1  [] {}
    'k8'  1 1  [] {}
    'k9'  1 1  [] {}
    'k10' 1 1  [] {}
    'k11' 1 1  [] {}
    'k12' 1 1  [] {}
    'k13' 1 1  [] {}
    'k14' 1 1  [] {}
    'k15' 1 1  [] {}
    'k16' 1 1  [] {}
    'k17' 1 1  [] {}
    'k18' 1 1  [] {}
    'k19' 1 1  [] {}
    'k20' 1 1  [] {}
    'k21' 1 1  [] {}
    'k22' 1 1  [] {}
    'k23' 1 1  [] {}
    'k24' 1 1  [] {}
    'k25' 1 1  [] {}
    'k26' 1 1  [] {}
    'k27' 1 1  [] {}
    'k28' 1 1  [] {}
    'k29' 1 1  [] {}
    'k30' 1 1  [] {}
    'k31' 1 1  [] {}
    'k32' 1 1  [] {}
};

MODEL.STATES = {
    'hep_AcoA'      1   '3*v4 - v5 - v6'                            {}
    'hep_TG'        2   'v2 + v5/26 + v14/3 - v7 - v12 + v17'       {} 
    'hep_C'         1   'v6/13 + v15 + v16 - v8 - v11 - v13 + v32'  {}
    'hep_BA'        0   'v8 - v9'                                   {}
    'pl_FFA'        1   '3*v19 - v14'                               {}
    'pl_VLDL_TG'    1   'v12 - v20 - v31'                           {} 
    'pl_VLDL_C'     1   'v13 - v15 - v21 - v22 + v18'               {} 
    'pl_HDL_C'      1   'v30 - v16 - v18'                           {}
    'per_AcoA'      1   '3*v26 - v27 - v28'                         {}
    'per_TG'        1   'v20 + v23 + v27/26 - v19 - v29'            {}
    'per_C'         1   'v21 + v28/13 - v30'                        {}
    'pl_HDL_TG'     1   'v31 - v17'                                 {} 
};

MODEL.REACTIONS = {
    % name   reaction               meta
    'v1'     'k1'                   {}
    'v2'     'k2'                   {}
    'v3'     'k3'                   {}
    'v4'     'k4'                   {}
    'v5'     'k5 * hep_AcoA'        {}
    'v6'     'k6 * hep_AcoA'        {}
    'v7'     'k7 * hep_TG'          {}
    'v8'     'k8 * hep_C'           {}
    'v9'     'k9 * hep_BA'          {}
    'v10'    'k10 * hep_BA'         {}
    'v11'    'k11 * hep_C'          {}
    'v12'    'k12 * hep_TG'         {}
    'v13'    'k13 * hep_C'          {}
    'v14'    'k14 * pl_FFA'         {}
    'v15'    'k15 * pl_VLDL_C'      {}
    'v16'    'k16 * pl_HDL_C'       {}
    'v17'    'k17 * pl_HDL_TG'      {}
    'v18'    'k18 * (pl_HDL_C / (pl_HDL_TG + pl_HDL_C) - pl_VLDL_C / (pl_VLDL_C + pl_VLDL_TG))'      {} % HDL_C -> VLDL_C
    'v19'    'k19 * per_TG'         {}
    'v20'    'k20 * pl_VLDL_TG'     {}
    'v21'    'k21 * pl_VLDL_C'      {}
    'v22'    'k22 * pl_VLDL_C'      {}
    'v23'    'k23'                  {}
    'v24'    'k24'                  {}
    'v25'    'k25'                  {}
    'v26'    'k26'                  {}
    'v27'    'k27 * per_AcoA'       {}
    'v28'    'k28 * per_AcoA'       {}
    'v29'    'k29 * per_TG'         {}
    'v30'    'k30 * per_C'          {}
    'v31'    'k31 * (pl_VLDL_TG / (pl_VLDL_TG + pl_VLDL_C) - pl_HDL_TG / (pl_HDL_TG + pl_HDL_C))'    {} % VLDL_TG -> HDL_TG   
    'v32'    'k32'                  {}      % cholesterol from diet to liver
    
    % helper functions
    'pl_TC'     'pl_VLDL_C + pl_HDL_C'              {}
    'fat_intk'  'v1 + v2 + v23 + v24'               {}
    'gluc_intk' 'v3 + v4 + v25 + v26'               {}
    'fat_ox'    'v1 + v24 + v7 + v29'               {}
    'gluc_ox'   'v3 + v25'                          {}
%     'chol_exc'  'v42 - v41 + v11'                   {}
    
    
};

