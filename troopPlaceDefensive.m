function RiskGame = troopPlaceDefensive(troopNum, player, RiskGame)

%% Run through Structure and Create Sub-Array of Owned Territories

myTerritories= {};
counter = 1;

for icount = 1:36
    if RiskGame(icount).player == player
        myTerritories{1, counter} = icount;
        counter = counter + 1;
    end
end

%% Go Through Sub-Array and Determine Surrounding Troop Ratio

enemy = 0;
myTroops = 0;
troopRatio = {};
next = 1;

for jcount = 1:length(myTerritories)
    for ncount = 1:length(RiskGame(myTerritories{jcount}).locations)
        adj = RiskGame(myTerritories{jcount}).locations{ncount};
        for rcount = 1:36
            if strcmp(adj, RiskGame(rcount).building) == 1
                if RiskGame(rcount).player == player
                   myTroops = myTroops + RiskGame(rcount).armies;
                else
                    enemy = enemy + RiskGame(rcount).armies;
                end
            end
        end
    end
    myTroops = myTroops + RiskGame(myTerritories{jcount}).armies;
    troopRatio{next} = enemy/myTroops;
    next = next + 1;
    enemy = 0;
    myTroops = 0;
end

%% Allocate Troops Depending on Strategy

troopRatiob = cell2mat(troopRatio);
total = sum(troopRatiob);
Ratios = troopRatiob ./ total;

Placements = troopNum*Ratios;

xx = troopNum;
while xx > 0 
    for count = 1: length(myTerritories)
        if xx <= 0
            break
        end
       pie = floor((troopNum*Ratios(count)));
       if pie < 1
           pie = 1;
       end
        RiskGame(myTerritories{count}).armies = RiskGame(myTerritories{count}).armies + pie;
        xx = xx - pie;
       
    end
    
 
     if xx > 0
          mRatio = max(Ratios);
          for count = 1: length(myTerritories)
              if mRatio == Ratios(count)
          RiskGame(myTerritories{count}).armies = RiskGame(myTerritories{count}).armies + xx;
              end
          end
          
              xx = 0;
    end
    
end
