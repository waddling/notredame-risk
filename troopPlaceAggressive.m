function troopPlaceAggressive(x, p)

%% West Quad

RiskGame(1).quad = 'West Quad';
RiskGame(1).building = 'McGlinn Hall';
RiskGame(1).placement = [1 2 3 4; 5 6 7 8];
RiskGame(1).player = 2;
RiskGame(1).locations = {'Ryan Hall','Hammes Bookstore','South Dining Hall'};
RiskGame(1).armies = 12;

RiskGame(2).quad = 'West Quad';
RiskGame(2).building = 'Ryan Hall';
RiskGame(2).placement = [10 21 31 40; 50 60 70 80];
RiskGame(2).player = 1;
RiskGame(2).locations = {'McGlinn Hall','Morris Inn','Hammes Bookstore'};
RiskGame(2).armies = 8;

RiskGame(3).quad = 'West Quad';
RiskGame(3).building = 'Morris Inn';
RiskGame(3).placement = [100 210 310 400; 500 600 700 800];
RiskGame(3).player = 1;
RiskGame(3).locations = {'Ryan Hall','Hammes Bookstore','Stinson-Remick'};
RiskGame(3).armies = 4;

RiskGame(4).quad = 'West Quad';
RiskGame(4).building = 'Hammes Bookstore';
RiskGame(4).placement = [9 10 01 02; 03 04 05 06];
RiskGame(4).player = 1;
RiskGame(4).locations = {'McGlinn Hall','Ryan Hall','Morris Inn','DPAC'};
RiskGame(4).armies = 10;

%% South Quad

RiskGame(5).quad = 'South Quad';
RiskGame(5).building = 'Carroll Hall';
RiskGame(5).placement = [1 2 3 4 5 6];
RiskGame(5).player = 2;
RiskGame(5).locations = {'Lewis Hall','The Rock'};
RiskGame(5).armies = 8;

RiskGame(6).quad = 'South Quad';
RiskGame(6).building = 'The Rock';
RiskGame(6).placement = [1 2 3 4 5 6];
RiskGame(6).player = 2;
RiskGame(6).locations = {'Carroll Hall','Morrissey Manor','South Dining Hall','Joyce Center'};
RiskGame(6).armies = 1;

RiskGame(7).quad = 'South Quad';
RiskGame(7).building = 'Morrissey Manor';
RiskGame(7).placement = [1 2 3 4 5 6];
RiskGame(7).player = 1;
RiskGame(7).locations = {'The Rock','South Dining Hall','CoMo','Grotto'};
RiskGame(7).armies = 0;

RiskGame(8).quad = 'South Quad';
RiskGame(8).building = 'South Dining Hall';
RiskGame(8).placement = [1 2 3 4 5 6];
RiskGame(8).player = 1;
RiskGame(8).locations = {'Alumni Hall','The Rock','Morrissey Manor','CoMo','McGlinn Hall'};
RiskGame(8).armies = 5;

RiskGame(9).quad = 'South Quad';
RiskGame(9).building = 'CoMo';
RiskGame(9).placement = [1 2 3 4 5 6];
RiskGame(9).player = 2;
RiskGame(9).locations = {'Alumni Hall','South Dining Hall','Morrissey Manor','Sorin Hall'};
RiskGame(9).armies = 9;

RiskGame(10).quad = 'South Quad';
RiskGame(10).building = 'Alumni Hall';
RiskGame(10).placement = [1 2 3 4 5 6];
RiskGame(10).player = 1;
RiskGame(10).locations = {'Como','South Dining Hall','Eck Law'};
RiskGame(10).armies = 12;

% Check if this is correctly Placed
RiskGame(11).quad = 'South Quad';
RiskGame(11).building = 'Eck Law';
RiskGame(11).placement = [1 2 3 4 5 6];
RiskGame(11).player = 0;
RiskGame(11).locations = {'Alumni','O''Shag'};
RiskGame(11).armies = 0;

RiskGame(12).quad = 'South Quad';
RiskGame(12).building = 'O''Shag';
RiskGame(12).placement = [1 2 3 4 5 6];
RiskGame(12).player = 0;
RiskGame(12).locations = {'Eck Law','LaFun','DeBartolo Hall'};
RiskGame(12).armies = 0;

%% Stadium/Engineering Quad

RiskGame(13).quad = 'Stadium/Engineering Quad';
RiskGame(13).building = 'Jordan';
RiskGame(13).placement = [1 2 3 4 5 6];
RiskGame(13).player = 0;
RiskGame(13).locations = {'Joyce Center','The Stadium','Hesburgh Library'};
RiskGame(13).armies = 0;

RiskGame(14).quad = 'Stadium/Engineering Quad';
RiskGame(14).building = 'Joyce Center';
RiskGame(14).placement = [1 2 3 4 5 6];
RiskGame(14).player = 0;
RiskGame(14).locations = {'Jordan','The Stadium','The Rock'};
RiskGame(14).armies = 0;

RiskGame(15).quad = 'Stadium/Engineering Quad';
RiskGame(15).building = 'The Stadium';
RiskGame(15).placement = [1 2 3 4 5 6];
RiskGame(15).player = 0;
RiskGame(15).locations = {'Jordan','Joyce Center','DeBartolo Hall','Mendoza'};
RiskGame(15).armies = 0;

RiskGame(16).quad = 'Stadium/Engineering Quad';
RiskGame(16).building = 'DeBartolo Hall';
RiskGame(16).placement = [1 2 3 4 5 6];
RiskGame(16).player = 0;
RiskGame(16).locations = {'O''Shag','Stinson-Remick','The Stadium','Mendoza'};
RiskGame(16).armies = 0;

RiskGame(17).quad = 'Stadium/Engineering Quad';
RiskGame(17).building = 'Mendoza';
RiskGame(17).placement = [1 2 3 4 5 6];
RiskGame(17).player = 0;
RiskGame(17).locations = {'Stinson-Remick','The Stadium','DeBartolo Hall','DPAC'};
RiskGame(17).armies = 0;

RiskGame(18).quad = 'Stadium/Engineering Quad';
RiskGame(18).building = 'Stinson-Remick';
RiskGame(18).placement = [1 2 3 4 5 6];
RiskGame(18).player = 0;
RiskGame(18).locations = {'DeBartolo Hall','DPAC','Morris Inn','Mendoza'};
RiskGame(18).armies = 0;

RiskGame(19).quad = 'Stadium/Engineering Quad';
RiskGame(19).building = 'DPAC';
RiskGame(19).placement = [1 2 3 4 5 6];
RiskGame(19).player = 0;
RiskGame(19).locations = {'Mendoza','Stinson-Remick','Hammes Bookstore','St. Liam'};
RiskGame(19).armies = 0;

%% God Quad

RiskGame(20).quad = 'God Quad';
RiskGame(20).building = 'Grotto';
RiskGame(20).placement = [1 2 3 4 5 6];
RiskGame(20).player = 0;
RiskGame(20).locations = {'Basilica','Sorin Hall','Morrissey Manor'};
RiskGame(20).armies = 0;

RiskGame(21).quad = 'God Quad';
RiskGame(21).building = 'Basilica';
RiskGame(21).placement = [1 2 3 4 5 6];
RiskGame(21).player = 0;
RiskGame(21).locations = {'Grotto','Sorin Hall','The Golden Dome'};
RiskGame(21).armies = 0;

RiskGame(22).quad = 'God Quad';
RiskGame(22).building = 'Sorin Hall';
RiskGame(22).placement = [1 2 3 4 5 6];
RiskGame(22).player = 0;
RiskGame(22).locations = {'Grotto','Basilica','The Golden Dome','CoMo'};
RiskGame(22).armies = 0;

RiskGame(23).quad = 'God Quad';
RiskGame(23).building = 'The Golden Dome';
RiskGame(23).placement = [1 2 3 4 5 6];
RiskGame(23).player = 0;
RiskGame(23).locations = {'Sorin Hall','Basilica','LaFun','Lewis Hall'};
RiskGame(23).armies = 0;

RiskGame(24).quad = 'God Quad';
RiskGame(24).building = 'LaFun';
RiskGame(24).placement = [1 2 3 4 5 6];
RiskGame(24).player = 0;
RiskGame(24).locations = {'The Golden Dome','Cavanaugh Hall','Hesburgh Library','O''Shag'};
RiskGame(24).armies = 0;

%% Mod Quad

RiskGame(25).quad = 'Mod Quad';
RiskGame(25).building = 'Stepan Center';
RiskGame(25).placement = [1 2 3 4 5 6];
RiskGame(25).player = 0;
RiskGame(25).locations = {'Pasquerilla West','Pasquerilla East','North Dining Hall'};
RiskGame(25).armies = 0;

RiskGame(26).quad = 'Mod Quad';
RiskGame(26).building = 'Pasquerilla West';
RiskGame(26).placement = [1 2 3 4 5 6];
RiskGame(26).player = 0;
RiskGame(26).locations = {'Stepan Center','Pasquerilla East','Flaherty Hall','Siegfried Hall'};
RiskGame(26).armies = 0;

RiskGame(27).quad = 'Mod Quad';
RiskGame(27).building = 'Pasquerilla East';
RiskGame(27).placement = [1 2 3 4 5 6];
RiskGame(27).player = 0;
RiskGame(27).locations = {'Stepan Center','Pasquerilla West','Flaherty Hall'};
RiskGame(27).armies = 0;

RiskGame(28).quad = 'Mod Quad';
RiskGame(28).building = 'Siegfried Hall';
RiskGame(28).placement = [1 2 3 4 5 6];
RiskGame(28).player = 0;
RiskGame(28).locations = {'Hesburgh Library','Pasquerilla West','Flaherty Hall','Farley Hall'};
RiskGame(28).armies = 0;

RiskGame(29).quad = 'Mod Quad';
RiskGame(29).building = 'Flaherty Hall';
RiskGame(29).placement = [1 2 3 4 5 6];
RiskGame(29).player = 0;
RiskGame(29).locations = {'Hesburgh Library','Pasquerilla West','Siegfried Hall','Pasquerilla East'};
RiskGame(29).armies = 0;

RiskGame(30).quad = 'Mod Quad';
RiskGame(30).building = 'Hesburgh Library';
RiskGame(30).placement = [1 2 3 4 5 6];
RiskGame(30).player = 0;
RiskGame(30).locations = {'Siegfried Hall','Flaherty Hall','LaFun','Jordan'};
RiskGame(30).armies = 0;

%% North Quad (Best Quad)

RiskGame(31).quad = 'North Quad';
RiskGame(31).building = 'St. Liam';
RiskGame(31).placement = [1 2 3 4 5 6];
RiskGame(31).player = 0;
RiskGame(31).locations = {'North Dining Hall','Keenan Hall','Lewis Hall','DPAC'};
RiskGame(31).armies = 0;

RiskGame(32).quad = 'North Quad';
RiskGame(32).building = 'North Dining Hall';
RiskGame(32).placement = [1 2 3 4 5 6];
RiskGame(32).player = 0;
RiskGame(32).locations = {'St. Liam','Keenan Hall','Farley Hall','Stepan Center'};
RiskGame(32).armies = 0;

RiskGame(33).quad = 'North Quad';
RiskGame(33).building = 'Keenan Hall';
RiskGame(33).placement = [1 2 3 4 5 6];
RiskGame(33).player = 0;
RiskGame(33).locations = {'St. Liam','North Dining Hall','Farley Hall','Lewis Hall','Cavanaugh Hall'};
RiskGame(33).armies = 0;

RiskGame(34).quad = 'North Quad';
RiskGame(34).building = 'Lewis Hall';
RiskGame(34).placement = [1 2 3 4 5 6];
RiskGame(34).player = 0;
RiskGame(34).locations = {'St. Liam','Keenan Hall','Cavanaugh Hall','The Golden Dome','Carroll Hall'};
RiskGame(34).armies = 0;

RiskGame(35).quad = 'North Quad';
RiskGame(35).building = 'Cavanaugh Hall';
RiskGame(35).placement = [1 2 3 4 5 6];
RiskGame(35).player = 0;
RiskGame(35).locations = {'Lewis Hall','Keenan Hall','Farley Hall','LaFun'};
RiskGame(35).armies = 0;

RiskGame(36).quad = 'North Quad';
RiskGame(36).building = 'Farley Hall';
RiskGame(36).placement = [1 2 3 4 5 6];
RiskGame(36).player = 0;
RiskGame(36).locations = {'Cavanaugh Hall','Keenan Hall','North Dining Hall','Siegfried Hall'};
RiskGame(36).armies = 0;


%% Run through Structure and Create Sub-Array of Owned Territories

myTerritories= {};
counter = 1;

for icount = 1:36
    % If the inputted player matches the owner of the territory, its
    % position in the structure is stored in the array myTerritories
    if RiskGame(icount).player == p
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
    % Goes through each territory owned by the inputted player and checks
    % that territory's array of adjacent territories
    for ncount = 1:length(RiskGame(myTerritories{jcount}).locations)
        % The name of each adjacent territory is stored as a string
        adj = RiskGame(myTerritories{jcount}).locations{ncount};
        for rcount = 1:36
            % The adjacent territory is found in the structure array by
            % using string compare
            if strcmp(adj, RiskGame(rcount).building) == 1
                % If the adjacent territory is owned by the inputted
                % player, its armies are added to the myTroops count for
                % the original territory
                if RiskGame(rcount).player == p
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
    myTroops = myTroops + RiskGame(myTerritories{jcount}).armies;
    % The enemy to myTroops ratio is then determined for the territory and
    % placed in the troopRatio array
    troopRatio{next} = enemy/myTroops;
    % The counter variable next holds the place in the troopRatio array
    next = next + 1;
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
incRatios = sort(Ratios);
decRatios = sort(Ratios, 'descend');

% A new variable that stores the inputted number of troops to place
xx = x;


% While the number of troops to place is greater than 0, the loop will
% continue to execute
while xx > 0
    % Goes through the array of ratios
    for lcount = 1:length(Ratios)
        for qcount = 1:length(incRatios)
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
                placeTroop = floor(xx*decRatios(qcount));
                % The corresponding spot in the larger structure is determined
                % by the number held in the myTerritories array
                spot = myTerritories{lcount};
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
                spot = myTerritories{lcount};
                RiskGame(spot).armies = RiskGame(spot).armies + placeTroop;
                xx = xx - placeTroop;
                % Now the while loop will be exited since xx = 0
            end
        end
    end
end













