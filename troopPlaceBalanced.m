function RiskGame = troopPlaceBalanced(troopNum, player, RiskGame)

myTerritories = 0;

% Iterates through the entire structure and collects which territories are owned by the inputted player
for count = 1:length(RiskGame)
    if RiskGame(count).player == player
        myTerritories = myTerritories + 1;
    end
end

enemy1 = 0;
enemy2 = 0;
enemy3 = 0;

% Depending on which player was inputted, these if statements will collect the troops owned by the other players
if player == 1 
    for icount = 1:length(RiskGame)
        if RiskGame(count).player == 2
            enemy1 = enemy1 + 1;
        elseif RiskGame(count).player == 3 
            enemy2 = enemy2 + 1;
        elseif RiskGame(count).player == 4
            enemy3 = enemy3 + 1;
        end
    end
elseif player == 2
    for icount = 1:length(RiskGame)
        if RiskGame(count).player == 1
            enemy1 = enemy1 + 1;
        elseif RiskGame(count).player == 3 
            enemy2 = enemy2 + 1;
        elseif RiskGame(count).player == 4
            enemy3 = enemy3 + 1;
        end
    end
elseif player == 3
    for icount = 1:length(RiskGame)
        if RiskGame(count).player == 2
            enemy1 = enemy1 + 1;
        elseif RiskGame(count).player == 1 
            enemy2 = enemy2 + 1;
        elseif RiskGame(count).player == 4
            enemy3 = enemy3 + 1;
        end
    end
elseif player == 4
    for icount = 1:length(RiskGame)
        if RiskGame(count).player == 2
            enemy1 = enemy1 + 1;
        elseif RiskGame(count).player == 3 
            enemy2 = enemy2 + 1;
        elseif RiskGame(count).player == 1
            enemy3 = enemy3 + 1;
        end
    end
end

% These ratios are created to see who is winning
ratio1 = enemy1/36;
ratio2 = enemy2/36;
ratio3 = enemy3/36;
myRatio = myTerritories/36;

TheArray = [ratio1, ratio2, ratio3, myRatio];

sort(TheArray, 'ascend');

% If the player's position in the ratio is first or second, they are losing, and will thus implement an aggressive troop placement strategy
if TheArray(1) == myRatio || TheArray(2) == myRatio
    RiskGame = troopPlaceAggressive(troopNum, player, RiskGame)
% Otherwise, they are winning or in second place, so they will place their troops in a more defensive way to guard their territories
else
    RiskGame = troopPlaceDefensive(troopNum, player, RiskGame)
end






