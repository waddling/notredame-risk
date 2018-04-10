function Risk_Load_Board

% Loads the board by randomly assigning territories to each player

%% Set parameters

load('Risk_Structure.mat');

numPlayers = 4;
maxTerritories = length(RiskGame)/numPlayers;

%% Distribute Territories

territories1 = 0;
territories2 = 0;
territories3 = 0;
territories4 = 0;


for iT = 1 : length(RiskGame)
    runAgain = true;
    while runAgain == true
        owner = randi(4);
        if owner == 1 && territories1 >= maxTerritories
            runAgain = true;
        elseif owner == 2 && territories2 >= maxTerritories
            runAgain = true;
        elseif owner == 3 && territories3 >= maxTerritories
            runAgain = true;
        elseif owner == 4 && territories4 >= maxTerritories
            runAgain = true;
        else 
            RiskGame(iT).player = owner;
            RiskGame(iT).armies = 1;
            runAgain = false;
            switch owner
                case 1
                    territories1 = territories1 + 1;
                case 2
                    territories2 = territories2 + 1;
                case 3
                    territories3 = territories3 + 1;
                case 4
                    territories4 = territories4 + 1;    
            end
        end
    end
end