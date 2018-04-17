function Risk_Battle_AI_V1(AIType,playerCountry,enemyCountry)

% Takes a type of AI and chooses whether to attack or not

%% Load & Set Structure

load('Risk_Structure.mat');

playerTroops = RiskGame(playerCountry).armies;
enemyTroops = RiskGame(enemyCountry).armies;

%% Choose to attack

ar = 0.8; % Aggresive AI ratio
br = 1.5; % Balanced AI ratio
dr = 2.5; % Defensive AI ratio

% Chooses what AI is attacking with the if statements and

if strcmp(AIType,'Aggressive')
    while playerTroops / enemyTroops >= ar && enemyTroops ~= 0 && playerTroops > 1
        [playerTroops,enemyTroops] = Risk_Battle(playerTroops,enemyTroops);
        
        RiskGame(playerCountry).armies = playerTroops;
        RiskGame(enemyCountry).armies = enemyTroops;
        
    end
elseif strcmp(AIType,'Balanced') 
    while playerTroops / enemyTroops >= br && enemyTroops ~= 0
        [playerTroops,enemyTroops] = Risk_Battle(playerTroops,enemyTroops);
        
        RiskGame(playerCountry).armies = playerTroops;
        RiskGame(enemyCountry).armies = enemyTroops;
        
    end
elseif strcmp(AIType,'Defensive')
    while playerTroops / enemyTroops >= dr && enemyTroops ~= 0
        [playerTroops,enemyTroops] = Risk_Battle(playerTroops,enemyTroops);
        
        RiskGame(playerCountry).armies = playerTroops;
        RiskGame(enemyCountry).armies = enemyTroops;
      
    end
elseif strcmp(AIType,'Random')
    rChoice = randi(2) - 1;
    while rChoice == 1 && enemyTroops ~= 0
        [playerTroops,enemyTroops] = Risk_Battle(playerTroops,enemyTroops);
        
        RiskGame(playerCountry).armies = playerTroops;
        RiskGame(enemyCountry).armies = enemyTroops;
        
        rChoice = randi(2) - 1;
    end
end

