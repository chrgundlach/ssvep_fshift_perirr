% startup_norman('ExpName')
% loads libraries and current experiment's folder
% available experiments are: 'FShift_Probabil'

function [] = startup_christopher(ExpName)
pcname = 'stimulationspc';
if nargin < 1
    fprintf('\nno specific library selected')
    fprintf('\navailable experiments:')
    fprintf('\n''FShift_Probabil'' - probabilistic Posner Cueing in Feature Space paradigm')
    fprintf('\n''FShift_PerrIrr'' - feature shifting paradigm testing whether suppression is just a byproduct of gain')
end

switch lower(ExpName)
    case 'fshift_probabil'
        cd(sprintf('/home/%s/matlab/lab_libraries/',pcname))
        !git checkout master
        addpath(genpath('/home/stimulationspc/matlab/User/christopher/stim_ssvep_fshift_probabil'))
        addpath(genpath(sprintf('/home/%s/matlab/lab_libraries/general_functions/',pcname))); % should be loaded already by star
        cd('/home/stimulationspc/matlab/User/christopher/stim_ssvep_fshift_probabil')
    case 'fshift_perrirr'
        cd(sprintf('/home/%s/matlab/lab_libraries/',pcname))
        !git checkout master
        addpath(genpath('/home/stimulationspc/matlab/User/christopher/stim_ssvep_fshift_perirr'))
        addpath(genpath(sprintf('/home/%s/matlab/lab_libraries/general_functions/',pcname))); % should be loaded already by star
        cd('/home/stimulationspc/matlab/User/christopher/stim_ssvep_fshift_perirr')
    otherwise
        help(mfilename)
        error('Experiment not known. ^ See function help above ^')
end