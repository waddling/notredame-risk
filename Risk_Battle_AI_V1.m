function [RiskGame,attackerWon] = Risk_Battle_AI_V1(RiskGame,AIType,playerCountry,enemyCountry)

% Takes a type of AI and chooses whether to attack or not

%% Load & Set Structure

% load('Risk_Structure.mat');

playerTroops = RiskGame(playerCountry).armies;
enemyTroops = RiskGame(enemyCountry).armies;

%% Choose to attack

ar = 1.5; 
br = 2; 
dr = 2.5;

% ar = 0.8; % Aggressive AI ratio
% br = 1.2; % Balanced AI ratio
% dr = 1.8; % Defensive AI ratio

% Chooses what AI is attacking with the if statements and
attackerWon = false;

if AIType == 1
    while playerTroops / enemyTroops >= ar && enemyTroops ~= 0 && playerTroops > 1
        [playerTroops,enemyTroops] = Risk_Battle(playerTroops,enemyTroops);
        
        RiskGame(playerCountry).armies = playerTroops;
        RiskGame(enemyCountry).armies = enemyTroops;
        
    end
elseif AIType == 2
    while playerTroops / enemyTroops >= br && enemyTroops ~= 0 && playerTroops > 1
        [playerTroops,enemyTroops] = Risk_Battle(playerTroops,enemyTroops);
        
        RiskGame(playerCountry).armies = playerTroops;
        RiskGame(enemyCountry).armies = enemyTroops;
        
    end
elseif AIType == 3
    while playerTroops / enemyTroops >= dr && enemyTroops ~= 0 && playerTroops > 1
        [playerTroops,enemyTroops] = Risk_Battle(playerTroops,enemyTroops);
        
        RiskGame(playerCountry).armies = playerTroops;
        RiskGame(enemyCountry).armies = enemyTroops;
      
    end
else
    rChoice = randi(2) - 1;
    while rChoice == 1 && enemyTroops ~= 0 && playerTroops > 1
        [playerTroops,enemyTroops] = Risk_Battle(playerTroops,enemyTroops);
        
        RiskGame(playerCountry).armies = playerTroops;
        RiskGame(enemyCountry).armies = enemyTroops;
        
        rChoice = randi(2) - 1;
    end
end
if enemyTroops == 0
    attackerWon = true;
end
