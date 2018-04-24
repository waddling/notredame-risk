function [RiskGame, players, winner] = RiskGameExe(RiskGame, players)
% RiskGameExe

%<<<<<<< HEAD
%clear;
%clc;
%clf;
%=======
%clear;
%clc;
%>>>>>>> 7982222d7a0d7efe4238e89871ddebc4739d91df

%% Set Parameters

% Load Main Structure

%load('Risk_Structure.mat');

% This calls a structure called RiskGame

%RiskGame = Risk_Load_Board(RiskGame);

% Structure for which AI type players are
% Will eventually be defined by GUI

players(1).AttackAI = 'Aggressive';
players(1).PlacementAI = '';
players(1).bonusTroops = 0;

players(2).AttackAI = 'Aggressive';
players(2).PlacementAI = 'Random';
players(2).bonusTroops = 0;

players(3).AttackAI = 'Aggressive';
players(3).PlacementAI = 'Random';
players(3).bonusTroops = 0;

players(4).AttackAI = 'Aggressive';
players(4).PlacementAI = 'Random';
players(4).bonusTroops = 0;

% Define troop bonuses for Quads

westQB = 2;
southQB = 7;
stadiumQB = 6;
godQB = 5;
modQB = 4;
northQB = 5;

%% Game (Turns)

% While loop checks that no player has won and goes through the placement
% and attacking turns

% This will be false but since the game isn't executable

victoryAchieved = false;

winner = 0;

while victoryAchieved == false
    % Check for troop bonuses
    for iP = 1 : 4
        players(iP).bonusTroops = 0;
        
        for iT = 1 : 4 % West Quad
            if RiskGame(iT).player == iP
                hasQuad = true;
            else
                hasQuad = false;
                break
            end
        end
        if hasQuad == true
            players(iP).bonusTroops = players(iP).bonusTroops + westQB;          
        end
        
        for iT = 5 : 12  % South Quad
            if RiskGame(iT).player == iP
                hasQuad = true;
            else
                hasQuad = false;
                break
            end
        end
        if hasQuad == true
            players(iP).bonusTroops = players(iP).bonusTroops + southQB;          
        end
        
        for iT = 13 : 19  % Stadium Quad
            if RiskGame(iT).player == iP
                hasQuad = true;
            else
                hasQuad = false;
                break
            end
        end
        if hasQuad == true
            players(iP).bonusTroops = players(iP).bonusTroops + stadiumQB;          
        end
        
        for iT = 20 : 24  % God Quad
            if RiskGame(iT).player == iP
                hasQuad = true;
            else
                hasQuad = false;
                break
            end
        end
        if hasQuad == true
            players(iP).bonusTroops = players(iP).bonusTroops + godQB;          
        end
        
        for iT = 25 : 30  % Mod Quad
            if RiskGame(iT).player == iP
                hasQuad = true;
            else
                hasQuad = false;
                break
            end
        end
        if hasQuad == true
            players(iP).bonusTroops = players(iP).bonusTroops + modQB;          
        end
        
        for iT = 31 : 36  % North Quad
            if RiskGame(iT).player == iP
                hasQuad = true;
            else
                hasQuad = false;
                break
            end
        end
        if hasQuad == true
            players(iP).bonusTroops = players(iP).bonusTroops +  northQB;          
        end
    end
    % Placement Round
    for iP = 1 : 4
        territoryCount = 0;
        for iT = 1 : length(RiskGame)
            if RiskGame(iT).player == iP
               territoryCount = territoryCount + 1;
            end
            addTroops = floor(territoryCount/3) + players(iP).bonusTroops;
        end
        % Chooses AI
        switch players(iP).PlacementAI
            case 'Aggressive'
                RiskGame = troopPlaceAggressive(addTroops,iP,RiskGame);
            case 'Defensive'
                RiskGame = troopPlaceDefensive(addTroops,iP,RiskGame);
            case 'Balanced'
                RiskGame = troopPlaceBalanced(addTroops,iP,RiskGame);
            otherwise
                RiskGame = troopPlaceRandom(addTroops,iP,RiskGame);
        end
    end
    % Attack Round
    for iP = 1 : 4
        for iT = 1 : length(RiskGame)
            if RiskGame(iT).player == iP
                for iL = 1 : length(RiskGame(iT).locations)
                    for it = 1 : length(RiskGame)
                        if strcmp(RiskGame(iT).locations{iL},RiskGame(it).building)...
                                && RiskGame(iT).player ~= RiskGame(it).player
                            [RiskGame,hasWon] = Risk_Battle_AI_V1(RiskGame,players(iP).AttackAI,iT,it);
                            if hasWon == true
                                RiskGame(it).player = iP;
                                RiskGame(it).armies = 1;
                                RiskGame(iT).armies = RiskGame(iT).armies - 1;
                            end
                        end
                    end
                end
            end
        end
    end
    % Check for victory
    for iP = 1 : 4
        territoryCount = 0;
        for iT = 1 : length(RiskGame)
            if RiskGame(iT).player == iP
                territoryCount = territoryCount + 1;
            end
        end
        if territoryCount == length(RiskGame)
            victoryAchieved = true;
            winner = iP;
        end
    end
end

