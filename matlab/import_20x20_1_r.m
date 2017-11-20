%% Import data from text file.
% Script for importing data from the following text file:
%
%    C:\Users\Davide\Documents\GitHub\Project4\Codes\build-Project4-Desktop-Release\Data_L20_E_M_acceptConf_vs_numberofMC_T1_mt.txt
%
% To extend the code to different selected data or a different text file,
% generate a function instead of a script.

% Auto-generated by MATLAB on 2017/11/18 11:14:49

%% Initialize variables.
filename = 'C:\Users\Davide\Documents\GitHub\Project4\Codes\build-Project4-Desktop-Release\Data_L20_E_M_acceptConf_vs_numberofMC_T1_random_mt_2.txt';

%% Format for each line of text:
%   column2: double (%f)
%	column3: double (%f)
%   column4: double (%f)
%	column5: double (%f)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%*15s%15f%15f%15f%f%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', '', 'WhiteSpace', '', 'EmptyValue' ,NaN, 'ReturnOnError', false);

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Allocate imported array to column variable names
cycles1 = dataArray{:, 1};
energy1_r = dataArray{:, 2};
magn1_r = dataArray{:, 3};
choices1_r = dataArray{:, 4};


%% Clear temporary variables
clearvars filename formatSpec fileID dataArray ans;