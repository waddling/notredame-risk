function RiskGame = fortify(RiskGame, player)

highestAmount = 0;
possiblePlaces = {};
theSpot = 0;
next = 1;
firstTime = 0;

% Goes through the entire RiskGame structure and finds territories owned by
% the player whose turn it is
for counter = 1:length(RiskGame)
    if RiskGame(counter).player == player
        % Goes through the array of adjacent locations to that territory
        % they own
        for countAdj = 1:length(RiskGame(counter).locations)
            % Stores the name of the adjacent building
            adj = RiskGame(countAdj).building;
            for loopCount = 1:length(RiskGame)
                % Goes through the RiskGame array and finds that adjacent
                % building to check if the current player owns it
                if strcmp(adj, RiskGame(loopCount).building) == 1
                    if RiskGame(loopCount).player == player
                        % The territory they own is then placed in an array
                        % of possiblePlaces since it has an adjacent
                        % territory also owned by the player
                        if firstTime > 0
                            if possiblePlaces {1, (next - 1)} ~= counter
                                possiblePlaces{1, next} = counter;
                                next = next + 1;
                            end
                        else
                            
                            possiblePlaces{1, next} = counter;
                            next = next + 1;
                            firstTime = 1;
                            
                            
                        end
                    end
                end
            end
        end
    end
end
% This next segment of the loop finds the location in possiblePlaces
% that has the most armies in it
for counter = 1:length(possiblePlaces)
    if RiskGame(possiblePlaces{1,counter}).armies > highestAmount
        highestAmount = RiskGame(possiblePlaces{1,counter}).armies;
        theSpot = possiblePlaces{1, counter};
    end
end

if theSpot > 0
    if highestAmount >= 5
        amountToPlace = floor(.5*RiskGame(theSpot).armies);
        RiskGame(theSpot).armies = RiskGame(theSpot).armies - amountToPlace;
        
        leastTroop = 100;
        moveSpot = 0;
        
        for JJ = 1:length(RiskGame(theSpot).locations)
            newAdj = RiskGame(JJ).building;
            for KK = 1:length(RiskGame)
                if strcmp(newAdj, RiskGame(KK).building) == 1
                    if RiskGame(KK).player == player
                        if RiskGame(KK).armies < leastTroop
                            leastTroop = RiskGame(KK).armies;
                            moveSpot = KK;
                        end
                    end
                end
            end
            
        end
        if moveSpot > 0
            RiskGame(moveSpot).armies = RiskGame(moveSpot).armies + amountToPlace;
        end
    end
end
