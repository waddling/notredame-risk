function RiskGame = troopPlaceAggressive(troopNum, player, RiskGame)

%% Run through Structure and Create Sub-Array of Owned Territories

myTerritories= [];
counter = 1;

for icount = 1:36
    % If the inputted player matches the owner of the territory, its
    % position in the structure is stored in the array myTerritories
    if RiskGame(icount).player == player
        myTerritories(1, counter) = icount;
        counter = counter + 1;
    end
end

%% Go Through Sub-Array and Determine Surrounding Troop Ratio

enemy = 0;
myTroops = 0;
troopRatio = {};
next = 1;
myActualTerritories = [];
counter = 1;

for jcount = 1:length(myTerritories)
    % Goes through each territory owned by the inputted player and checks
    % that territory's array of adjacent territories
    for ncount = 1:length(RiskGame(myTerritories(jcount)).locations)
        
        % The name of each adjacent territory is stored as a string
        adj = RiskGame(myTerritories(jcount)).locations{ncount};
        for rcount = 1:36
            % The adjacent territory is found in the structure array by
            % using string compare
            if strcmp(adj, RiskGame(rcount).building) == 1
                % If the adjacent territory is owned by the inputted
                % player, its armies are added to the myTroops count for
                % the original territory
                if RiskGame(rcount).player == player
                    myTroops = myTroops + RiskGame(rcount).armies;
                    % If the adjacent territory is owned by a different player,
                    % its armies are added to the enemy count for the original
                    % territory
                else
                    enemy = enemy + RiskGame(rcount).armies;
                end
            end
        end
    end
    % After iterating through each adjacent territory, the myTroops count
    % adds on the number of troops in the original territory to avoid
    % dividing by zero in the case that no adjacent territories contain the
    % inputted player's troops
    myTroops = myTroops + RiskGame(myTerritories(jcount)).armies;
    % The enemy to myTroops ratio is then determined for the territory and
    % placed in the troopRatio array
    rate = enemy/myTroops;
    if rate ~= 0 % This conditional will assure that no troops are placed in 
        % territories that have no enemy presence
        troopRatio{next} = rate;
         % The counter variable next holds the place in the troopRatio array
        next = next + 1;
        myActualTerritories(1, counter) = myTerritories(jcount);
        counter = counter + 1;
    end
    % The enemy and MyTroops counts are reset to 0 before the process is
    % repeated for the next territory owned by the player
    enemy = 0;
    myTroops = 0;
end

%% Allocate Troops Depending on Strategy

% The cell array is converted to a matrix
troopRatiob = cell2mat(troopRatio);
% All of the ratios in the matrix are added together
total = sum(troopRatiob);
% The matrix of ratios is divided by the sum of the ratios to create a new
% matrix with ratios that will be proportional to troop placement
Ratios = troopRatiob ./ total;

% Sorts the ratios in increasing order and descending order
incRatios = sort(Ratios, 'ascend');
decRatios = sort(Ratios, 'descend');

% A new variable that stores the inputted number of troops to place
xx = troopNum;


% While the number of troops to place is greater than 0, the loop will
% continue to execute
while xx > 0
    % Goes through the array of ratios
    for lcount = 1:length(Ratios)
        for qcount = 1:length(incRatios)
            % This break statement ensures that the for loop will not place any more troops if xx reaches 0
            if xx <= 0
                break
            end
            % If the ratio in the normally ordered array and the array in
            % increasing order match, then the corresponding index from the
            % decreasing array is used
            % This is because the aggressive troop placement strategy uses
            % the opposite ratios of the defensive troop placement
            % strategy.  Aggressive places more of its troops in places
            % with a lower enemy/troop ratio
            if Ratios(lcount) == incRatios(qcount)
                % The amount of troops to place is the total amount times
                % the ratio, rounded down with the FLOOR command
                placeTroop = floor(troopNum*decRatios(qcount));
                % If the ratio was a decimal less than 1 (which will often happen at the beginning of the game) the FLOOR
                % command will round this down to 0.  This IF statement corrects this issue by rounding it back up to 1.
                if placeTroop < 1
                    placeTroop = 1;
                end
                % The corresponding spot in the larger structure is determined
                % by the number held in the myTerritories array
                spot = myActualTerritories(lcount);
                % The number of troops placed is added to the current number
                % of troops in the structure
                RiskGame(spot).armies = RiskGame(spot).armies + placeTroop;
                % The amount of troops placed is subtracted from the number
                % of troops to place
                xx = xx - placeTroop;
                
            end
        end
    end
    % This failsafe is built in in case the amount of troops added  to territories
    % was less than the number of troops to place after the for loop is
    % exited.
    if xx > 0
        placeTroop = xx;
        for lcount = 1:length(Ratios)
            % Finds which territory has the smallest enemy/myTroops ratio
            % and allocates the remaining troops there (since this is the
            % aggressive troop placement AI
            if Ratios(lcount) == decRatios(1)
                spot = myActualTerritories(lcount);
                RiskGame(spot).armies = RiskGame(spot).armies + placeTroop;
                xx = xx - placeTroop;
                % Now the while loop will be exited since xx = 0
            end
        end
    end
end













