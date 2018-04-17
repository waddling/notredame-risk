% The Main Script

clear
clc

load('Risk_Structure.mat') % Loads our initial structure

% Calls the function that distributes troops everywhere

RiskGame = Risk_Load_Board(RiskGame);

troopNum = 5;

% This example for loop will allow players 1-4 to place 5 troops using the aggressive strategy

for player = 1:4
    
       
       RiskGame = troopPlaceAggressive(troopNum, player, RiskGame);
       
end
