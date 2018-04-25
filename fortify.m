function RiskGame = fortify(RiskGame, player)

highestAmount = 0;
helpMe = false;
theSpot = 0;
for counter = 1:length(RiskGame)
    if RiskGame(counter).player == player
        for countAdj = 1:length(RiskGame(counter).locations)
            adj = RiskGame(countAdj).building;
            for loopCount = 1:length(RiskGame)
                if strcmp(adj, RiskGame(loopCount).building) == 1
                    if RiskGame(loopCount).player == player
                        helpMe = true;
                    end
                end
            end
        end
    end
    
    if RiskGame(counter).player == player && helpMe == true
        if RiskGame(counter).armies > highestAmount
            highestAmount = RiskGame(counter).armies;
            theSpot = counter;
        end
    end
end

if theSpot > 0
    maxNum = RiskGame(theSpot).armies;
    if maxNum >= 5
        amountToPlace = floor(.5*RiskGame(theSpot).armies);
        RiskGame(theSpot).armies = RiskGame(theSpot).armies - amountToPlace;
        
        leastTroop = 100;
        moveSpot = 0;
        
        for JJ = 1:length(RiskGame(theSpot).locations)
            newAdj = RiskGame(JJ).building;
            for KK = 1:length(RiskGame)
                if strcmp(newAdj, RiskGame(KK).building) == 1
                    if RiskGame(KK).player == player
                        if RiskGame(KK).player < leastTroop
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
