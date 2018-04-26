function winsGraph(handles)

axes(handles.winnerGraph);
playerArray = [1 2 3 4];

bar(handles.winnerGraph, playerArray, handles.wins);

axis([0 5 0 (str2double(handles.numSimulations.String)+1)]);
grid 'on';
xlabel('Player');
ylabel('# of Wins');