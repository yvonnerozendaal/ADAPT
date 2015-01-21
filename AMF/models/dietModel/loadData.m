data.diets.t1 = [0 12]*7*24;
data.diets.t2 = [0 4 8 12]*7*24;
data.diets.t3 = [0 1 3 5 7 9 12]*7*24;
data.diets.t4 = [3 10]*7*24;


% liver weights (g)
liver_weights = [   2.85
                    3.40
                    3.39
                    1.88
                    1.74
                    1.43
                    3.02
                    3.96
                    4.28
                    3.54    ];
                
% nmol/mg tissue (mumol/g tissue)
data.diets.hep_TG_r = [ 109.3
                        124.6
                        115.9
                        62.5
                        44.0
                        47.9
                        106.0
                        111.9
                        112.1
                        83.8 ];
data.diets.hep_TG_m = nanmean(data.diets.hep_TG_r .* liver_weights);
data.diets.hep_TG_std = nanstd(data.diets.hep_TG_r .* liver_weights);
% Wielinga et al. 9.1 (0.8) mumol TG/liver
data.diets.hep_TG_m = [9.1 data.diets.hep_TG_m]; % mumol / liver
data.diets.hep_TG_std = [0.8 data.diets.hep_TG_std]; % mumol / liver
% data.diets.hep_TG_m =   [8.1  91.79];

% nmol/mg tissue (mumol/g tissue)
data.diets.hep_C_r = [  16.6
                        12.3
                        14.7
                        8.8
                        9.5
                        10.2
                        13.5
                        15.7
                        13.3
                        13.2 ];
data.diets.hep_C_m = nanmean(data.diets.hep_C_r .* liver_weights);
data.diets.hep_C_std = nanstd(data.diets.hep_C_r .* liver_weights);
% Wielinga et al. 6.8 (0.4) mumol C/liver
data.diets.hep_C_m = [6.8 data.diets.hep_C_m]; % mumol / liver
data.diets.hep_C_std = [0.4 data.diets.hep_C_std]; % mumol / liver
% data.diets.hep_C_m =   [6.1 12.79];
% data.diets.hep_C_std = [0.35 2.61];

% mM (mumol, assuming plasma volume = 1ml)
data.diets.pl_FFA_r = [ 1.87    0.71    0.53    1.40
                        1.27    0.87    0.55    1.51
                        1.52    0.65    0.61    1.64
                        0.99    0.66    0.65    1.04
                        0.77    0.61    0.46    1.19
                        1.60    0.61    0.38    1.07
                        1.34    0.52    0.80    1.13
                        1.41    0.92    0.59    1.17
                        1.51    0.68    0.46    1.53
                        1.43    0.61    0.56    1.48  ];
data.diets.pl_FFA_m = [ 1.37    0.68    0.56    1.32]; % mumol / plasma
data.diets.pl_FFA_std = [0.31   0.12    0.12    0.22]; % mumol / plasma

% mM
data.diets.pl_VLDL_TG_r = [  2.27    1.58    1.45    2.00
                        2.7     1.25    1.47    2.39
                        2.78    1.08    1.31    2.42
                        2.07    1.30    1.10    0.77
                        1.88    1.06    1.17    0.79
                        5.72    1.64    1.13    0.82
                        4.23    1.57    1.34    2.16
                        1.89    1.20    2.30    7.97
                        2.57    1.44    2.48    7.50
                        1.89    1.39    2.02    5.57] ;
                    
data.diets.pl_VLDL_TG_m =    [2.80   1.35    1.58    3.24]; % mumol / plasma
data.diets.pl_VLDL_TG_std =  [1.25   0.21    0.50    2.75]; % mumol / plasma 

% mM
data.diets.pl_TC_r = [ 3.17    5.01    4.94    5.79
                    3.22    4.39    4.92    7.07
                    3.67    4.32    4.94    6.86
                    2.45    4.22    4.26    5.25
                    2.20    3.92    3.96    5.13
                    5.25    4.95    3.37    4.52
                    4.56    4.74    4.64    7.09
                    2.82    5.31    6.21    15.45
                    3.07    5.31    6.06    14.58
                    2.55    4.89    5.44    15.22] ;
data.diets.pl_TC_m = [ 3.30    4.70    4.87    8.69]; % mumol / plasma
data.diets.pl_TC_std = [0.96   0.47    0.88    4.50]; % mumol / plasma

% mM
data.diets.pl_HDL_C_r = [  1.69    3.03    3.21    2.64
                        1.29    3.03    3.44    2.47
                        1.06    3.35    3.25    2.51
                        0.61    3.09    3.64    3.56
                        0.82    2.69    2.83    2.73
                        1.79    1.82    NaN     2.86
                        1.10    1.91    3.91    2.97
                        1.31    2.56    2.63    1.41
                        1.15    3.03    2.86    1.81
                        1.20    NaN     3.49    1.80];    
data.diets.pl_HDL_C_m =   [1.20    2.72    3.25    2.48]; % mumol / plasma
data.diets.pl_HDL_C_std = [0.36    0.54    0.42    0.64]; % mumol / plasma


% TG = (fat mass (g)) / 853 (g/mol) = TG (mol) ;

data.diets.fat_mass = [ 2.4     7.6     11.3    14.4    14.4    18.1    19.0     
                        3.6     8.1     10.2    13.8    15.7    18.4    18.6
                        2.3     6.3     10.1    13.7    15.8    19.4    20.8
                        0.8     2.9     5.0     8.4     10.0    13.4    13.8
                        0.9     2.8     3.9     7.2     8.4     10.7    11.7
                        1.1     1.8     1.6     3.4     4.5     6.7     9.6   
                        1.3     3.2     4.7     9.3     11.9    15.3    19.9
                        3.2     8.2     11.8    14.7    16.7    21.1    23.3
                        2.1     6.9     10.8    14.7    17.5    21.3    22.4
                        1.7     6.2     11.6    15.4    18.3    22.4    23.4];   

data.diets.perTG_m =   nanmean(data.diets.fat_mass*(1e6/853));
data.diets.perTG_std = nanstd(data.diets.fat_mass*(1e6/853));

% energy intake in TG equivalents
% TG = 9.2 kcal/g
% fat intake
data.diets.FatInt_m = [3.1 3.1 3.1 3.1]*0.60*(5.2/9.2)*1*(1e6/853)/24;
data.diets.FatInt_std = [0.3 0.3 0.3 0.3]*0.60*(5.2/9.2)*1*(1e6/853)/24;

% gluc = 4.2 kcal/g --> gluc / TG = 0.46; 4/9 = 0.44;
% glucose intake
data.diets.GlucInt_m = [3.1 3.1 3.1 3.1]*0.20*(5.2/4.2)*1*(1e6/180)/24;
data.diets.GlucInt_std = [0.3 0.3 0.3 0.3]*0.20*(5.2/4.2)*1*(1e6/180)/24;

% chol intake %% is there a TG equivalent of cholesterol?
data.diets.chol_intk_m = [3.1 3.1 3.1 3.1]*0.01;
data.diets.chol_intk_std = [0.3 0.3 0.3 0.3]*0.01;

% fat oxidation (kcal/h)
data.diets.fat_ox_m =   [6.98  8.79]*(1e6/853)/9.2/24;
data.diets.fat_ox_std = [0.81  0.78]*(1e6/853)/9.2/24;

% glucose oxidation (kcal/h)
data.diets.gluc_ox_m =   [1.32  1.10]*(1e6/180)/4.2/24;
data.diets.gluc_ox_std = [0.19  0.09]*(1e6/180)/4.2/24;

save('dietData.mat', '-struct', 'data');