function loadGameMap(handles)

% Loads the initial Risk Map

load('Risk_Structure.mat');

axes(handles.gameMap);
[NDRisk, mode, alpha] = imread(fullfile('.', 'buildings', 'NDRisk.png'));
image(NDRisk, 'AlphaData', alpha);

axis('image');

% Specifies the coordinates of each territory
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
image6.XData = [121, 205];
image6.YData = [521, 647];

image7 = image('CData', RiskGame(7).image, 'AlphaData', RiskGame(7).imgAlpha);
image7.Parent = gca;
image7.XData = [197, 290];
image7.YData = [455, 616];

image8 = image('CData', RiskGame(8).image, 'AlphaData', RiskGame(8).imgAlpha);
image8.Parent = gca;
image8.XData = [165, 316];
image8.YData = [606, 669];

image9 = image('CData', RiskGame(9).image, 'AlphaData', RiskGame(9).imgAlpha);
image9.Parent = gca;
image9.XData = [274, 353];
image9.YData = [519, 639];

image10 = image('CData', RiskGame(10).image, 'AlphaData', RiskGame(10).imgAlpha);
image10.Parent = gca;
image10.XData = [307, 448];
image10.YData = [595, 694];

image11 = image('CData', RiskGame(11).image, 'AlphaData', RiskGame(11).imgAlpha);
image11.Parent = gca;
image11.XData = [417, 540];
image11.YData = [586, 695];

image12 = image('CData', RiskGame(12).image, 'AlphaData', RiskGame(12).imgAlpha);
image12.Parent = gca;
image12.XData = [514, 600];
image12.YData = [538, 669];

image13 = image('CData', RiskGame(13).image, 'AlphaData', RiskGame(13).imgAlpha);
image13.Parent = gca;
image13.XData = [757, 886];
image13.YData = [567, 747];

image14 = image('CData', RiskGame(14).image, 'AlphaData', RiskGame(14).imgAlpha);
image14.Parent = gca;
image14.XData = [757, 886];
image14.YData = [725, 908];

image15 = image('CData', RiskGame(15).image, 'AlphaData', RiskGame(15).imgAlpha);
image15.Parent = gca;
image15.XData = [579, 784];
image15.YData = [695, 925];

image16 = image('CData', RiskGame(16).image, 'AlphaData', RiskGame(16).imgAlpha);
image16.Parent = gca;
image16.XData = [463, 589];
image16.YData = [763, 861];

image17 = image('CData', RiskGame(17).image, 'AlphaData', RiskGame(17).imgAlpha);
image17.Parent = gca;
image17.XData = [507, 619];
image17.YData = [849, 1031];

image18 = image('CData', RiskGame(18).image, 'AlphaData', RiskGame(18).imgAlpha);
image18.Parent = gca;
image18.XData = [436, 534];
image18.YData = [788, 1045];

image19 = image('CData', RiskGame(19).image, 'AlphaData', RiskGame(19).imgAlpha);
image19.Parent = gca;
image19.XData = [444, 602];
image19.YData = [1016, 1098];

image20 = image('CData', RiskGame(20).image, 'AlphaData', RiskGame(20).imgAlpha);
image20.Parent = gca;
image20.XData = [330, 426];
image20.YData = [310, 393];

image21 = image('CData', RiskGame(21).image, 'AlphaData', RiskGame(21).imgAlpha);
image21.Parent = gca;
image21.XData = [396, 464];
image21.YData = [337, 466];

image22 = image('CData', RiskGame(22).image, 'AlphaData', RiskGame(22).imgAlpha);
image22.Parent = gca;
image22.XData = [362, 452];
image22.YData = [390, 531];

image23 = image('CData', RiskGame(23).image, 'AlphaData', RiskGame(23).imgAlpha);
image23.Parent = gca;
image23.XData = [423, 511];
image23.YData = [333, 528];

image24 = image('CData', RiskGame(24).image, 'AlphaData', RiskGame(24).imgAlpha);
image24.Parent = gca;
image24.XData = [492, 546];
image24.YData = [397, 525];

image25 = image('CData', RiskGame(25).image, 'AlphaData', RiskGame(25).imgAlpha);
image25.Parent = gca;
image25.XData = [708, 798];
image25.YData = [59, 151];

image26 = image('CData', RiskGame(26).image, 'AlphaData', RiskGame(26).imgAlpha);
image26.Parent = gca;
image26.XData = [698, 771];
image26.YData = [132, 322];

image27 = image('CData', RiskGame(27).image, 'AlphaData', RiskGame(27).imgAlpha);
image27.Parent = gca;
image27.XData = [757, 857];
image27.YData = [105, 320];

image28 = image('CData', RiskGame(28).image, 'AlphaData', RiskGame(28).imgAlpha);
image28.Parent = gca;
image28.XData = [681, 797];
image28.YData = [305, 385];

image29 = image('CData', RiskGame(29).image, 'AlphaData', RiskGame(29).imgAlpha);
image29.Parent = gca;
image29.XData = [743, 924];
image29.YData = [264, 370];

image30 = image('CData', RiskGame(30).image, 'AlphaData', RiskGame(30).imgAlpha);
image30.Parent = gca;
image30.XData = [727, 848];
image30.YData = [340, 428];

image31 = image('CData', RiskGame(31).image, 'AlphaData', RiskGame(31).imgAlpha);
image31.Parent = gca;
image31.XData = [407, 593];
image31.YData = [155, 250];

image32 = image('CData', RiskGame(32).image, 'AlphaData', RiskGame(32).imgAlpha);
image32.Parent = gca;
image32.XData = [557, 646];
image32.YData = [155, 265];

image33 = image('CData', RiskGame(33).image, 'AlphaData', RiskGame(33).imgAlpha);
image33.Parent = gca;
image33.XData = [520, 606];
image33.YData = [207, 285];

image34 = image('CData', RiskGame(34).image, 'AlphaData', RiskGame(34).imgAlpha);
image34.Parent = gca;
image34.XData = [371, 520];
image34.YData = [206, 303];

image35 = image('CData', RiskGame(35).image, 'AlphaData', RiskGame(35).imgAlpha);
image35.Parent = gca;
image35.XData = [501, 606];
image35.YData = [279, 361];

image36 = image('CData', RiskGame(36).image, 'AlphaData', RiskGame(36).imgAlpha);
image36.Parent = gca;
image36.XData = [567, 647];
image36.YData = [254, 355];