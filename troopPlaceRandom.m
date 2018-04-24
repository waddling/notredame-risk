function RiskGame = troopPlaceRandom(troopNum, player, RiskGame)

%% Troop Placement Random
%
% check who owns the territory
% PLAYER IS WHAT PLAYER THE AI is, ex. PLAYER 1


%% Loop to find the areas controlled by player
S = [];
for count = 1: 36
    if RiskGame(count).player == player
        S = [S, count];
    end
    
end
%% while loop to randomly pace troops PLACING TROOPS

while troopNum > 0
    
    location = S(randi(length(S)));
    troopToAdded = randi(troopNum);
    RiskGame(location).armies = RiskGame(location).armies + troopToAdded;
    troopNum = troopNum - troopToAdded;
    
end


