% RiskMain

clear;
clc;
% clf;

%% Sets structure from .mat

load('Risk_Structure.mat');

% This calls a structure called RiskGame

RiskGame = Risk_Load_Board(RiskGame);

