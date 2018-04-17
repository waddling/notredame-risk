% How to Risk?
% To Risk or not to Risk?

clear
clc

load('Risk_Structure.mat')

%% Entrance to Hell

RiskGame = Risk_Load_Board(RiskGame);

 troopNum = 50000;

for player = 1:4
    
       
       RiskGame = troopPlaceAggressive(troopNum, player, RiskGame);
       
end
