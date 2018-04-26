function [RiskGame, winner] = RiskGameExe(RiskGame, players)
% RiskGameExe

%<<<<<<< HEAD
%clear;
%clc;
%clf;
%=======

%% Set Parameters

% Load Main Structure

%load('Risk_Structure.mat');

% This calls a structure called RiskGame

%RiskGame = Risk_Load_Board(RiskGame);

% Structure for which AI type players are
% Will eventually be defined by GUI

players(1).AttackAI = 'Balanced';
players(1).PlacementAI = 'Random';
players(1).bonusTroops = 0;

players(2).AttackAI = 'Defensive';
players(2).PlacementAI = 'Random';
players(2).bonusTroops = 0;

players(3).AttackAI = 'Defensive';
players(3).PlacementAI = 'Aggressive';
players(3).bonusTroops = 0;

players(4).AttackAI = 'Aggressive';
players(4).PlacementAI = 'Defensive';
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

while victoryAchieved == false && winner == 0
    % Check for troop bonuses
    for iP = 1 : 4
        if victoryAchieved == true
            break
        end
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
        % Placement Round
        territoryCount = 0;
        for iT = 1 : length(RiskGame)
            if RiskGame(iT).player == iP
                territoryCount = territoryCount + 1;
            end
            addTroops = territoryCount/3 + players(iP).bonusTroops;
            if addTroops < 1 && addTroops > 0
                addTroops = 1;
            end
            addTroops = floor(addTroops);
        end
        % Chooses AI
        if addTroops > 0
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
        for iT = 1 : length(RiskGame) % Goes through entire RiskGame structure to find territories owned by the player
            if RiskGame(iT).player == iP
                % Searches adjacent territories
                for iL = 1 : length(RiskGame(iT).locations)
                    for it = 1 : length(RiskGame)
                        % Compares adjacent territory to building name in
                        % big structure.  If it matches and the player in
                        % that territory does not equal iP, they will
                        % attack
                        if strcmp(RiskGame(iT).locations{iL},RiskGame(it).building)== 1 && RiskGame(it).player ~= iP
                            
                            % Enters the battle sequence
                            [RiskGame,hasWon] = Risk_Battle_AI_V1(RiskGame,players(iP).AttackAI,iT,it);
                            
                            % If they win, it's reassigned as their
                            % territory
                            if hasWon == true
                                RiskGame(it).player = iP;
                                % Put in 3/4 of the armies they had in the
                                % territory they are attacking from
                                RiskGame(it).armies = floor((3/4)*(RiskGame(iT).armies));
                                % Territory they attacked from loses the
                                % amount of troops they placed
                                RiskGame(iT).armies = RiskGame(iT).armies - RiskGame(it).armies;
                                
                            end
                        end
                    end
                end
            end
        end
        
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
        % Fortification Stage
        if victoryAchieved == false && territoryCount < 34
            RiskGame = fortify(RiskGame, iP);
        else
            RiskGame = 
        end
        % Check for victory
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
        if victoryAchieved == true
            break
        end
    end
end
end

