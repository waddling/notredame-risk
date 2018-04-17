function troopPlaceBalanced(x, p)

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

myTerritories = 0;
theirTerritories = 0;

for count = 1:length(RiskGame)
    if RiskGame(count).player == p
        myTerritories = myTerritories + 1;
    end
end

enemy1 = 0;
enemy2 = 0;
enemy3 = 0;

if p == 1 
    for icount = 1:length(RiskGame)
        if RiskGame(count).player == 2
            enemy1 = enemy1 + 1;
        elseif RiskGame(count).player == 3 
            enemy2 = enemy2 + 1;
        elseif RiskGame(count).player == 4
            enemy3 = enemy3 + 1;
        end
    end
elseif p == 2
    for icount = 1:length(RiskGame)
        if RiskGame(count).player == 1
            enemy1 = enemy1 + 1;
        elseif RiskGame(count).player == 3 
            enemy2 = enemy2 + 1;
        elseif RiskGame(count).player == 4
            enemy3 = enemy3 + 1;
        end
    end
elseif p == 3
    for icount = 1:length(RiskGame)
        if RiskGame(count).player == 2
            enemy1 = enemy1 + 1;
        elseif RiskGame(count).player == 1 
            enemy2 = enemy2 + 1;
        elseif RiskGame(count).player == 4
            enemy3 = enemy3 + 1;
        end
    end
elseif p == 4
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

ratio1 = enemy1/36;
ratio2 = enemy2/36;
ratio3 = enemy3/36;
myRatio = myTerritories/36;

TheArray = [ratio1, ratio2, ratio3, myRatio];

sort(TheArray, 'ascend');

if TheArray[1] == myRatio || TheArray[2] == myRatio
    troopPlaceAggressive(x, p)
else
    troopPlaceDefensive(x, p)
end






