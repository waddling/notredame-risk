function [AttackArmy, DefendArmy] = Risk_Battle(AttackArmy, DefendArmy)

% Ties defenders win

%AttackArmy = 10;
%DefendArmy = 10;

% How many to attack with

countervariable = 0;

if AttackArmy >= 3
    AttackDice = 3;
elseif AttackArmy == 2
    AttackDice = 2;
elseif AttackArmy == 1
    AttackDice = 1;
end

if DefendArmy >= 2
    DefendDice = 2;
elseif DefendArmy == 1
    DefendDice = 1;
end

for DefendRoll = 1:DefendDice
    DefendRolls(1, DefendRoll) = randi(6);
end

for AttackRoll = 1:AttackDice
    AttackRolls(1, AttackRoll) = randi(6);
end


if AttackDice > 1
    
    for temp = 1:DefendDice
        
        if AttackArmy > 0
            
            [ValueA, LocationA] = max(AttackRolls);
            [ValueD, LocationD] = max(DefendRolls);
            
            if ValueA > ValueD
                DefendRolls(1,LocationD) = 0;
                AttackRolls(1,LocationA) = 0;
                DefendArmy = DefendArmy - 1;
                
            else
                DefendRolls(1,LocationD) = 0;
                AttackRolls(1,LocationA) = 0;
                AttackArmy = AttackArmy - 1;
            end
            
        end
        
    end
    
else
    
    if AttackArmy > 0
        
        [ValueA, LocationA] = max(AttackRolls);
        [ValueD, LocationD] = max(DefendRolls);
        
        if ValueA > ValueD
            DefendRolls(1,LocationD) = 0;
            AttackRolls(1,LocationA) = 0;
            DefendArmy = DefendArmy - 1;
            
        else
            DefendRolls(1,LocationD) = 0;
            AttackRolls(1,LocationA) = 0;
            AttackArmy = AttackArmy - 1;
        end
        
    end
    
end