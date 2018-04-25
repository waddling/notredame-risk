function RiskGame = changeBuildingColor(RiskGame, buildingNumber, player)

% load('Risk_Structure.mat');

[row, col, ch] = size(RiskGame(buildingNumber).image);

figure(1);
image(RiskGame(buildingNumber).image, 'AlphaData', RiskGame(buildingNumber).imgAlpha);
axis('image', 'off');

% Case per player
switch player
    % Changes building color to (1) light blue
    case 1
        for ir = 1:row
            for ic = 1:col
                if ((RiskGame(buildingNumber).image(ir,ic,1) > 100) && (RiskGame(buildingNumber).image(ir,ic,2) > 100)) && (RiskGame(buildingNumber).image(ir,ic,3) > 100)
                    RiskGame(buildingNumber).image(ir,ic,1) = 211;
                    RiskGame(buildingNumber).image(ir,ic,2) = 225;
                    RiskGame(buildingNumber).image(ir,ic,3) = 255;
                end
            end
        end
    
    % Changes building color to (2) light green
    case 2
        for ir = 1:row
            for ic = 1:col
                if ((RiskGame(buildingNumber).image(ir,ic,1) > 100) && (RiskGame(buildingNumber).image(ir,ic,2) > 100)) && (RiskGame(buildingNumber).image(ir,ic,3) > 100)
                    RiskGame(buildingNumber).image(ir,ic,1) = 235;
                    RiskGame(buildingNumber).image(ir,ic,2) = 255;
                    RiskGame(buildingNumber).image(ir,ic,3) = 211;
                end
            end
        end
        
    % Changes building color to (3) light red
    case 3
        for ir = 1:row
            for ic = 1:col
                if ((RiskGame(buildingNumber).image(ir,ic,1) > 100) && (RiskGame(buildingNumber).image(ir,ic,2) > 100)) && (RiskGame(buildingNumber).image(ir,ic,3) > 100)
                    RiskGame(buildingNumber).image(ir,ic,1) = 255;
                    RiskGame(buildingNumber).image(ir,ic,2) = 222;
                    RiskGame(buildingNumber).image(ir,ic,3) = 211;
                end
            end
        end
        
    % Changes building color to (4) light purple
    case 4
        for ir = 1:row
            for ic = 1:col
                if ((RiskGame(buildingNumber).image(ir,ic,1) > 100) && (RiskGame(buildingNumber).image(ir,ic,2) > 100)) && (RiskGame(buildingNumber).image(ir,ic,3) > 100)
                    RiskGame(buildingNumber).image(ir,ic,1) = 244;
                    RiskGame(buildingNumber).image(ir,ic,2) = 211;
                    RiskGame(buildingNumber).image(ir,ic,3) = 255;
                end
            end
        end
end

figure(2);
image(RiskGame(buildingNumber).image, 'AlphaData', RiskGame(buildingNumber).imgAlpha);
axis('image', 'off');