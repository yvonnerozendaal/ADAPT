function DATASET = dietData()

DATASET.DESCRIPTION = 'Diet data.';

DATASET.FILE = 'dietData';

DATASET.GROUPS = {
    'diets'
%     'diets_R'
%     'diets_NAMR'
};

DATASET.FIELDS = {
    %name         %obs  %t   %mean            % stand dev       % unit conv
    'hep_TG'        1   't1' 'hep_TG_m'       'hep_TG_std'        1 []
    'hep_C'         1   't1' 'hep_C_m'        'hep_C_std'         1 []
    'pl_VLDL_TG'    1   't2' 'pl_VLDL_TG_m'   'pl_VLDL_TG_std'    1 []
    'pl_HDL_C'      1   't2' 'pl_HDL_C_m'     'pl_HDL_C_std'      1 []
    'pl_FFA'        1   't2' 'pl_FFA_m'       'pl_FFA_std'        1 []
    'per_TG'        1   't3' 'perTG_m'        'perTG_std'         1 []
    'pl_TC'         1   't2' 'pl_TC_m'        'pl_TC_std'         1 [] 
    'fat_intk'      1   't2' 'FatInt_m'       'FatInt_std'        1 []
    'gluc_intk'     1   't2' 'GlucInt_m'      'GlucInt_std'       1 []
    'fat_ox'        1   't4' 'fat_ox_m'       'fat_ox_std'        1 []
    'gluc_ox'       1   't4' 'gluc_ox_m'      'gluc_ox_std'       1 []
%     'chol_intk'     0   't2' 'chol_intk_m'    'chol_intk_std'     1 []
};

DATASET.FUNCTIONS = { 
};