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

% Last Modified by GUIDE v2.5 18-Apr-2018 21:08:59

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


% --- Outputs from this function are returned to the command line.
function varargout = riskBoard_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
