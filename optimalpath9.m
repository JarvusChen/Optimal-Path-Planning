function varargout = optimalpath9(varargin)
% OPTIMALPATH9 MATLAB code for optimalpath9.fig
%      OPTIMALPATH9, by itself, creates a new OPTIMALPATH9 or raises the existing
%      singleton*.
%
%      H = OPTIMALPATH9 returns the handle to a new OPTIMALPATH9 or the handle to
%      the existing singleton*.
%
%      OPTIMALPATH9('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OPTIMALPATH9.M with the given input arguments.
%
%      OPTIMALPATH9('Property','Value',...) creates a new OPTIMALPATH9 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before optimalpath9_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to optimalpath9_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help optimalpath9

% Last Modified by GUIDE v2.5 24-Dec-2015 00:10:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @optimalpath9_OpeningFcn, ...
                   'gui_OutputFcn',  @optimalpath9_OutputFcn, ...
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


% --- Executes just before optimalpath9 is made visible.
function optimalpath9_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to optimalpath9 (see VARARGIN)

% Choose default command line output for optimalpath9
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes optimalpath9 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = optimalpath9_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
b=Bluetooth('YIWEN',1);
fopen(b)
save('final1.mat','b');

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('final1.mat','b');
fclose(b);

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


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla reset
hold on
load('final6.mat','start');
disthandle = get(handles.uipanel3,'SelectedObject');
disttype = get(disthandle, 'String')
switch disttype
case 'By Camera'
    robot = start;
case 'By Input'
    robot = str2double(get(handles.edit1,'string'));
end




target = str2double(get(handles.edit2,'string'));
% load('optimalpath9.mat','barrier_table');
load('final5.mat','map_barrier');
barrier_table = map_barrier;

%建81格
DataX = [1:9 1:9 1:9 1:9 1:9 1:9 1:9 1:9 1:9];
k = 9;
DataY = [];
for i = 1:9
    for j = 1:9
        a = size(DataY);
        DataY(a(2)+1) = k;
    end
    k = k - 1;
end
Data = [DataX;DataY];

for i = 1:81
        plot(DataX(i),DataY(i),'ks','MarkerSize',2,'LineWidth',8)
end


%設變數

Y(1:81) = 0;
d(1:81) = 999;
d_all(1:81) = 0;
d_operation(1:81) = 999;
d_flag(1:81) = 0;
now = [];
order(1:80) = 0;
robot_path = 0;
robot_path_table = [];
robot_path_order = [];

% 畫背景
x=1:9;
y=1:9;
[Xaxis,Yaxis]=meshgrid(x,y);
plot(Xaxis,Yaxis,'k:');
plot(Yaxis,Xaxis,'k:');



count = 1;
for j = 1:9
    for i = 1:9
%         plot(i,j,'.','MarkerSize',15);
        text(DataX(count)-0.1,DataY(count)-0.4,num2str(count))
        count = count + 1;
    end
end
axis([0.9 9.1 0.9 9.1])

k = size(barrier_table);
for i = 1:k(2)
    plot(DataX(barrier_table(i)),DataY(barrier_table(i)),'rs','MarkerSize',6,'LineWidth',8)
end


% text(DataX(barrier3)-0.5,DataY(barrier3)-0.5,'barrier3')
%--------------------------建關係
for N=1:81
    R = [N-10 N-9 N-8 N-1 N+1 N+8 N+9 N+10];
    for i = 1:8
        if R(i) > 81 || R(i)<0
            R(i) = 0;
        end
        %設定障礙物
        for j = 1:k(2);
            if R(i) == barrier_table(j)
                R(i) = 0;
            end
        end
    end
    neuron(N,:) = [R];
end
%修正左邊
for i=1:9
    N=1+(i-1)*9;
    neuron(N,1) = 0;
    neuron(N,4) = 0;
    neuron(N,6) = 0;
end
%修正右邊
for i=1:9
    N=9+(i-1)*9;
    neuron(N,3) = 0;
    neuron(N,5) = 0;
    neuron(N,8) = 0;
end
neuron;
neuronNew = neuron;
parent = [target];
Y(parent) = 1;
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
        for i = 1:81
            if Y(i) ==1
                d_operation(i) = 999;
            end
        end

        order = sortorder(d_operation);
        d(1:81) = 999;
        d_operation(1:81) = 999;
        order = order(1:a(2));
        %--------------------------修正關係
        for i = 1:a(2)
            for j = 1:81
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
    d_flag(1:81) = 0;
    clear order
    clear now
    now = [];
    order(1:81) = 0;
end


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

%把路換成指令
nowdirection = -9;
robot_path_order = pathtoorder(robot_path_table,nowdirection)
save('final4.mat','robot_path_order');

%連線
m = size(robot_path_table);
for i = 1:m(2)
    lineX(i) = DataX(robot_path_table(i));
    lineY(i) = DataY(robot_path_table(i));
end
plot(lineX,lineY,'bo-','LineWidth',3)


plot(DataX(robot),DataY(robot),'ys','MarkerSize',6,'LineWidth',8)


%隱藏座標軸數字
set(gca,'xtick',[],'ytick',[])



% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('final1.mat','b');
load('final4.mat','robot_path_order');
a = size(robot_path_order);
for i = 1:a(2)
    fwrite(b,[1 robot_path_order(i)])
end


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[filename, pathname] = uigetfile({'*.jpg';'*.tif';'.*.png'},'Selectan image 1');
imgName=[pathname filename];
mapPic = imresize(imread(imgName),[960 1280]);

[mapPic2, map_barrier,start] = map2barr9(mapPic);
imshow(mapPic2);
save('final5.mat','map_barrier');
save('final6.mat','start');

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
