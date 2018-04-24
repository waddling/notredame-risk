% The Main Script

clear
clc

load('Risk_Structure.mat'); % Loads our initial structure
%load('PlayerTypes.mat');

% Calls the function that distributes troops everywhere

RiskGame = Risk_Load_Board(RiskGame);

troopNum = 5;

% This example for loop will allow players 1 and 2 to place 5 troops using the aggressive strategy

% for player = 1:2
%     
%        
%        RiskGame = troopPlaceAggressive(troopNum, player, RiskGame);
%        
% end
% 
% player = 3;
% 
% RiskGame = troopPlaceDefensive(troopNum, player, RiskGame);
% 
% player = 4;
% 
% RiskGame = troopPlaceBalanced(troopNum, player, RiskGame);

%-----------------------------------------

[RiskGame, winner] = RiskGameExe(RiskGame);

disp(winner);

