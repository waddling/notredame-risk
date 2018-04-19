function loadGameMap(handles)

% Loads the initial Risk Map

load('Risk_Structure.mat');

axes(handles.gameMap);
[NDRisk, mode, alpha] = imread(fullfile('.', 'buildings', 'NDRisk.png'));
image(NDRisk, 'AlphaData', alpha);

axis('image');

image1 = image('CData', RiskGame(1).image, 'AlphaData', RiskGame(1).imgAlpha);
image1.Parent = gca;
image1.XData = [144, 320];
image1.YData = [831, 916];

image2 = image('CData', RiskGame(2).image, 'AlphaData', RiskGame(2).imgAlpha);
image2.Parent = gca;
image2.XData = [247, 401];
image2.YData = [816, 952];

image3 = image('CData', RiskGame(3).image, 'AlphaData', RiskGame(3).imgAlpha);
image3.Parent = gca;
image3.XData = [330, 403];
image3.YData = [838, 1027];

image4 = image('CData', RiskGame(4).image, 'AlphaData', RiskGame(4).imgAlpha);
image4.Parent = gca;
image4.XData = [142, 354];
image4.YData = [907, 1011];

image5 = image('CData', RiskGame(5).image, 'AlphaData', RiskGame(5).imgAlpha);
image5.Parent = gca;
image5.XData = [47, 132];
image5.YData = [357, 438];

image6 = image('CData', RiskGame(6).image, 'AlphaData', RiskGame(6).imgAlpha);
image6.Parent = gca;
image6.XData = [47, 132];
image6.YData = [357, 438];