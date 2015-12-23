function varargout = optimalpath5(varargin)
% OPTIMALPATH5 MATLAB code for optimalpath5.fig
%      OPTIMALPATH5, by itself, creates a new OPTIMALPATH5 or raises the existing
%      singleton*.
%
%      H = OPTIMALPATH5 returns the handle to a new OPTIMALPATH5 or the handle to
%      the existing singleton*.
%
%      OPTIMALPATH5('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OPTIMALPATH5.M with the given input arguments.
%
%      OPTIMALPATH5('Property','Value',...) creates a new OPTIMALPATH5 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before optimalpath5_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to optimalpath5_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help optimalpath5

% Last Modified by GUIDE v2.5 24-Dec-2015 00:04:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @optimalpath5_OpeningFcn, ...
                   'gui_OutputFcn',  @optimalpath5_OutputFcn, ...
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


% --- Executes just before optimalpath5 is made visible.
function optimalpath5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to optimalpath5 (see VARARGIN)

% Choose default command line output for optimalpath5
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes optimalpath5 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = optimalpath5_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%
% ha=axes('units','normalized','position',[0.6 0.6 0.3 0.3]);
% uistack(ha,'down')
% II=imread('D:\路徑捷徑-勿刪\Desktop\EoIC\期末專題\map.jpg');
% image(II)
% colormap gray
% set(ha,'handlevisibility','off','visible','off');

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla reset

hold on

%建25格
DataX = [1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5];
DataY = [5 5 5 5 5 4 4 4 4 4 3 3 3 3 3 2 2 2 2 2 1 1 1 1 1 0 0 0 0 0];
Data = [DataX;DataY];

%設變數
robot = str2double(get(handles.edit1,'string'));
target = str2double(get(handles.edit2,'string'));
barrier1 = str2double(get(handles.edit3,'string'));
barrier2 = str2double(get(handles.edit4,'string'));
barrier3 = str2double(get(handles.edit5,'string'));


Y(1:25) = 0;
d(1:25) = 999;
d_all(1:25) = 0;
d_operation(1:25) = 999;
d_flag(1:25) = 0;
now = [];
order(1:24) = 0;
robot_path = 0;
robot_path_table = [];

% 畫背景
x=1:5;
y=1:5;
[Xaxis,Yaxis]=meshgrid(x,y);
plot(Xaxis,Yaxis,'k:');
plot(Yaxis,Xaxis,'k:');

for j = 1:5
    for i = 1:5
        plot(i,j,'.','MarkerSize',20);
    end
end

plot(handles.axes1,DataX(barrier1),DataY(barrier1),'rd','MarkerSize',30,'LineWidth',3)
% text(handles.axes1,DataX(barrier1)-0.2,DataY(barrier1)-0.5,'barrier1')
plot(handles.axes1,DataX(barrier2),DataY(barrier2),'rd','MarkerSize',30,'LineWidth',3)
% text(handles.axes1,DataX(barrier2)-0.2,DataY(barrier2)-0.5,'barrier2')
plot(handles.axes1,DataX(barrier3),DataY(barrier3),'rd','MarkerSize',30,'LineWidth',3)
% text(handles.axes1,DataX(barrier3)-0.2,DataY(barrier3)-0.5,'barrier3')
%--------------------------建關係
for N=1:25
    R = [N-6 N-5 N-4 N-1 N+1 N+4 N+5 N+6];
    for i = 1:8
        if R(i) > 25 || R(i)<0
            R(i) = 0;
        end
        %設定障礙物
        if R(i) == barrier1 || R(i) == barrier2 || R(i) == barrier3
            R(i) = 0;
        end
    end
    neuron(N,:) = [R];
end
%修正左邊
for i=1:5
    N=1+(i-1)*5;
    neuron(N,1) = 0;
    neuron(N,4) = 0;
    neuron(N,6) = 0;
end
%修正右邊
for i=1:5
    N=5+(i-1)*5;
    neuron(N,3) = 0;
    neuron(N,5) = 0;
    neuron(N,8) = 0;
end
neuronNew = neuron;
parent = [target];
% Y(parent) = 1;
%--------------------------開始
while Y(robot) ~= 1
    Psize = size(parent);
    for num = 1:Psize(2)
        P = parent(num);
        Y(P) = 1;
        for i = 1:8
             a = size(now);
            if neuronNew(P,i) ~= 0
                now(a(2)+1) = neuronNew(P,i);
            end
        end
        %修正now重複
        now = sortnow(now);
        a = size(now);
        
        for i = 1:a(2)
            if now(i) ~= 0
                d(now(i)) = ((DataX(P)-DataX(now(i)))^2+(DataY(P)-DataY(now(i)))^2)^(1/2);
                if d_flag(now(i)) == 0
                    d_flag(now(i)) = 1;
                    d_all(now(i)) = d_all(P) + d(now(i));
                end
            end
        end
        d_operation = d_all;
        for i = 1:25
            if Y(i) ==1
                d_operation(i) = 999;
            end
        end

        order = sortorder(d_operation);
        d(1:25) = 999;
        d_operation(1:25) = 999;
        order = order(1:a(2));
        %--------------------------修正關係
        for i = 1:a(2)
            for j = 1:25
                if Y(j) ~= 1
                    for k = 1:8
                        if neuronNew(j,k) == order(i)
                            neuronNew(j,k) = 0;
                        end
                        if neuronNew(j,k) == P
                            neuronNew(j,k) = 0;
                        end
                    end
                end
            end
        end
%     P
%     Y
%     now
%     d_all
%     d_operation
%     order
%     neuronNew
    end
    parent = order;
    d_flag(1:25) = 0;
    clear order
    clear now
    now = [];
    order(1:24) = 0;
end
    Y
    neuronNew

%把路存出來
find = robot;
robot_path_table(1) = robot;
while robot_path ~= target
    robot_path = finalpath(find,neuronNew);
    n = size(robot_path_table);
    find = robot_path;
    robot_path_table(n(2)+1) = robot_path;
end
robot_path_table

%連線
m = size(robot_path_table);
for i = 1:m(2)
    lineX(i) = DataX(robot_path_table(i));
    lineY(i) = DataY(robot_path_table(i));
end
plot(handles.axes1,lineX,lineY,'ro-','LineWidth',6)
% imshow(handles.axes2,'D:\路徑捷徑-勿刪\Desktop\EoIC\期末專題\1.jpg');

% --- Executes on key press with focus on pushbutton1 and none of its controls.
function pushbutton1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
