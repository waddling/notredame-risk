function varargout = riskBoard(varargin)
% RISKBOARD MATLAB code for riskBoard.fig
%      RISKBOARD, by itself, creates a new RISKBOARD or raises the existing
%      singleton*.
%
%      H = RISKBOARD returns the handle to a new RISKBOARD or the handle to
%      the existing singleton*.
%
%      RISKBOARD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RISKBOARD.M with the given input arguments.
%
%      RISKBOARD('Property','Value',...) creates a new RISKBOARD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before riskBoard_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to riskBoard_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help riskBoard

% Last Modified by GUIDE v2.5 24-Apr-2018 20:38:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @riskBoard_OpeningFcn, ...
                   'gui_OutputFcn',  @riskBoard_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before riskBoard is made visible.
function riskBoard_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to riskBoard (see VARARGIN)

% Choose default command line output for riskBoard
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes riskBoard wait for user response (see UIRESUME)
% uiwait(handles.figure1);
loadGameMap(handles);


%{
IMPORTANT---------------------------------------------------

To call attack / place strategy
handles.p[]AttackStrat.Value / handles.p[]PlaceStrat.Value
    Values: 1:Aggressive 2:Defensive 3:Balanced 4:Random

------------------------------------------------------------
%}


% --- Outputs from this function are returned to the command line.
function varargout = riskBoard_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function numSimulations_Callback(hObject, eventdata, handles)
% hObject    handle to numSimulations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numSimulations as text
%        str2double(get(hObject,'String')) returns contents of numSimulations as a double


% --- Executes during object creation, after setting all properties.
function numSimulations_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numSimulations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in startButton.
function startButton_Callback(hObject, eventdata, handles)
% hObject    handle to startButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in toggleAnimation.
function toggleAnimation_Callback(hObject, eventdata, handles)
% hObject    handle to toggleAnimation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of toggleAnimation


% --- Executes on selection change in p4PlaceStrat.
function p4PlaceStrat_Callback(hObject, eventdata, handles)
% hObject    handle to p4PlaceStrat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns p4PlaceStrat contents as cell array
%        contents{get(hObject,'Value')} returns selected item from p4PlaceStrat


% --- Executes during object creation, after setting all properties.
function p4PlaceStrat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p4PlaceStrat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in p4AttackStrat.
function p4AttackStrat_Callback(hObject, eventdata, handles)
% hObject    handle to p4AttackStrat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns p4AttackStrat contents as cell array
%        contents{get(hObject,'Value')} returns selected item from p4AttackStrat


% --- Executes during object creation, after setting all properties.
function p4AttackStrat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p4AttackStrat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in p3PlaceStrat.
function p3PlaceStrat_Callback(hObject, eventdata, handles)
% hObject    handle to p3PlaceStrat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns p3PlaceStrat contents as cell array
%        contents{get(hObject,'Value')} returns selected item from p3PlaceStrat


% --- Executes during object creation, after setting all properties.
function p3PlaceStrat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p3PlaceStrat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in p3AttackStrat.
function p3AttackStrat_Callback(hObject, eventdata, handles)
% hObject    handle to p3AttackStrat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns p3AttackStrat contents as cell array
%        contents{get(hObject,'Value')} returns selected item from p3AttackStrat


% --- Executes during object creation, after setting all properties.
function p3AttackStrat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p3AttackStrat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in p2PlaceStrat.
function p2PlaceStrat_Callback(hObject, eventdata, handles)
% hObject    handle to p2PlaceStrat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns p2PlaceStrat contents as cell array
%        contents{get(hObject,'Value')} returns selected item from p2PlaceStrat


% --- Executes during object creation, after setting all properties.
function p2PlaceStrat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p2PlaceStrat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in p2AttackStrat.
function p2AttackStrat_Callback(hObject, eventdata, handles)
% hObject    handle to p2AttackStrat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns p2AttackStrat contents as cell array
%        contents{get(hObject,'Value')} returns selected item from p2AttackStrat


% --- Executes during object creation, after setting all properties.
function p2AttackStrat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p2AttackStrat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in p1AttackStrat.
function p1AttackStrat_Callback(hObject, eventdata, handles)
% hObject    handle to p1AttackStrat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns p1AttackStrat contents as cell array
%        contents{get(hObject,'Value')} returns selected item from p1AttackStrat


% --- Executes during object creation, after setting all properties.
function p1AttackStrat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p1AttackStrat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in p1PlaceStrat.
function p1PlaceStrat_Callback(hObject, eventdata, handles)
% hObject    handle to p1PlaceStrat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns p1PlaceStrat contents as cell array
%        contents{get(hObject,'Value')} returns selected item from p1PlaceStrat


% --- Executes during object creation, after setting all properties.
function p1PlaceStrat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p1PlaceStrat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
