 %function mainStruture = RandomPlacement(RiskGame,troopNum,PLAYER)

clear
clc


RiskGame(1).quad = 'West Quad';
RiskGame(1).building = 'McGlinn Hall';
RiskGame(1).placement = [1 2 3 4; 5 6 7 8];
RiskGame(1).player = 0;
RiskGame(1).locations = {'Ryan Hall','Hammes Bookstore','South Dinning Hall'};
RiskGame(1).armies = 0;

RiskGame(2).quad = 'West Quad';
RiskGame(2).building = 'Ryan Hall';
RiskGame(2).placement = [10 21 31 40; 50 60 70 80];
RiskGame(2).player = 'Player1';
RiskGame(2).locations = {'McGlinn Hall','Morris Inn','Hammes Bookstore'};
RiskGame(2).armies = 0;

RiskGame(3).quad = 'West Quad';
RiskGame(3).building = 'Morris Inn';
RiskGame(3).placement = [100 210 310 400; 500 600 700 800];
RiskGame(3).player = 'Player1';
RiskGame(3).locations = {'Ryan Hall','Hammes Bookstore','Stinson-Remick'};
RiskGame(3).armies = 0;

RiskGame(4).quad = 'West Quad';
RiskGame(4).building = 'Hammes Bookstore';
RiskGame(4).placement = [9 10 01 02; 03 04 05 06];
RiskGame(4).player = 'Player1';
RiskGame(4).locations = {'McGlinn Hall','Ryan Hall','Morris Inn','DPAC'};
RiskGame(4).armies = 0;

%% South Quad

RiskGame(5).quad = 'South Quad';
RiskGame(5).building = 'Carroll Hall';
RiskGame(5).placement = [1 2 3 4 5 6];
RiskGame(5).player = 0;
RiskGame(5).locations = {'Lewis Hall','The Rock'};
RiskGame(5).armies = 0;

RiskGame(6).quad = 'South Quad';
RiskGame(6).building = 'The Rock';
RiskGame(6).placement = [1 2 3 4 5 6];
RiskGame(6).player = 0;
RiskGame(6).locations = {'Carroll Hall','Morrissey Manor','South Dinning Hall','Joyce Center'};
RiskGame(6).armies = 0;

RiskGame(7).quad = 'South Quad';
RiskGame(7).building = 'Morrissey Manor';
RiskGame(7).placement = [1 2 3 4 5 6];
RiskGame(7).player = 'Player1';
RiskGame(7).locations = {'The Rock','South Dinning Hall','CoMo','Grotto'};
RiskGame(7).armies = 0;

RiskGame(8).quad = 'South Quad';
RiskGame(8).building = 'South Dinning Hall';
RiskGame(8).placement = [1 2 3 4 5 6];
RiskGame(8).player = 'Player1';
RiskGame(8).locations = {'Alumni Hall','The Rock','Morrissey Manor','CoMo','McGlinn Hall'};
RiskGame(8).armies = 0;

RiskGame(9).quad = 'South Quad';
RiskGame(9).building = 'CoMo';
RiskGame(9).placement = [1 2 3 4 5 6];
RiskGame(9).player = 0;
RiskGame(9).locations = {'Alumni Hall','South Dinning Hall','Morrissey Manor','Sorin Hall'};
RiskGame(9).armies = 0;

RiskGame(10).quad = 'South Quad';
RiskGame(10).building = 'Alumni Hall';
RiskGame(10).placement = [1 2 3 4 5 6];
RiskGame(10).player = 'Player1';
RiskGame(10).locations = {'Como','South Dinning Hall','Eck Law'};
RiskGame(10).armies = 0;

troopNum = 100;
PLAYER = 'Player1';
%% Troop Placement Random
%
% check who owns the territory
% PLAYER IS WHAT PLAYER THE AI is, ex. PLAYER 1


%% Loop to find the areas controlled by player
S = [];
for count = 1: 10
    if strcmp(RiskGame(count).player, PLAYER) == 1
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


