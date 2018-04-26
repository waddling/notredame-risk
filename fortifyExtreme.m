function RiskGame = fortifyExtreme(RiskGame, player)

spots = {};
next = 1;
for count = 1:length(RiskGame)
    if RiskGame(count).player ~= player
        for J = 1:length(RiskGame(count).locations)
            adj = RiskGame(count).locations{J};
            for K = 1:length(RiskGame)
                if strcmp(adj, RiskGame(K).building) == 1 && RiskGame(K).player == player
                    spots{1,next} = K;
                end
            end
        end
    end
end

