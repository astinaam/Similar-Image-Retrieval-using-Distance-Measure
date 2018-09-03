function varargout = gui(varargin)
% GUI MATLAB code for gui.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui

% Last Modified by GUIDE v2.5 03-Sep-2018 03:26:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
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


% --- Executes just before gui is made visible.
function gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui (see VARARGIN)

% Choose default command line output for gui
handles.output = hObject;

set(handles.axes6,'xtick',[],'ytick',[]);
set(handles.axes6,'XColor','none');
set(handles.axes6,'YColor','none');
set(handles.axes7,'xtick',[],'ytick',[]);
set(handles.axes7,'XColor','none');
set(handles.axes7,'YColor','none');
set(handles.axes8,'xtick',[],'ytick',[]);
set(handles.axes8,'XColor','none');
set(handles.axes8,'YColor','none');
set(handles.axes9,'xtick',[],'ytick',[]);
set(handles.axes9,'XColor','none');
set(handles.axes9,'YColor','none');
set(handles.axes1,'xtick',[],'ytick',[]);
set(handles.axes1,'XColor','none');
set(handles.axes1,'YColor','none');
set(handles.axes2,'xtick',[],'ytick',[]);
set(handles.axes2,'XColor','none');
set(handles.axes2,'YColor','none');
set(handles.axes3,'xtick',[],'ytick',[]);
set(handles.axes3,'XColor','none');
set(handles.axes3,'YColor','none');
set(handles.axes4,'xtick',[],'ytick',[]);
set(handles.axes4,'XColor','none');
set(handles.axes4,'YColor','none');
set(handles.axes5,'xtick',[],'ytick',[]);
set(handles.axes5,'XColor','none');
set(handles.axes5,'YColor','none');
set(handles.axes10,'xtick',[],'ytick',[]);
set(handles.axes10,'XColor','none');
set(handles.axes10,'YColor','none');
set(handles.axes11,'xtick',[],'ytick',[]);
set(handles.axes11,'XColor','none');
set(handles.axes11,'YColor','none');
set(handles.axes12,'xtick',[],'ytick',[]);
set(handles.axes12,'XColor','none');
set(handles.axes12,'YColor','none');
set(handles.axes13,'xtick',[],'ytick',[]);
set(handles.axes13,'XColor','none');
set(handles.axes13,'YColor','none');
set(handles.axes14,'xtick',[],'ytick',[]);
set(handles.axes14,'XColor','none');
set(handles.axes14,'YColor','none');
set(handles.axes15,'xtick',[],'ytick',[]);
set(handles.axes15,'XColor','none');
set(handles.axes15,'YColor','none');
set(handles.axes16,'xtick',[],'ytick',[]);
set(handles.axes16,'XColor','none');
set(handles.axes16,'YColor','none');
set(handles.axes17,'xtick',[],'ytick',[]);
set(handles.axes17,'XColor','none');
set(handles.axes17,'YColor','none');
set(handles.axes18,'xtick',[],'ytick',[]);
set(handles.axes18,'XColor','none');
set(handles.axes18,'YColor','none');
set(handles.axes19,'xtick',[],'ytick',[]);
set(handles.axes19,'XColor','none');
set(handles.axes19,'YColor','none');
set(handles.axes20,'xtick',[],'ytick',[]);
set(handles.axes20,'XColor','none');
set(handles.axes20,'YColor','none');
set(handles.axes21,'xtick',[],'ytick',[]);
set(handles.axes21,'XColor','none');
set(handles.axes21,'YColor','none');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in load_traing_image.
function load_traing_image_Callback(hObject, eventdata, handles)
% hObject    handle to load_traing_image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(hObject);
fprintf('log :: load training image button clicked\n');
training_folder = uigetdir();
if length(training_folder) < 2
    fprintf('ERROR :: please select a folder or selected folder contains no .png image\n');
    handles.status1.String = "Please select a folder or selected folder contains no .png image and TRY AGAIN!!!";
    set( handles.status1, 'ForegroundColor', 'red');
    guidata(hObject, handles);
    return;
end
fprintf('log :: selected training folder = %s\n', training_folder);
handles.training_folder = training_folder;
handles.status1.String= strcat("Selected training folder = ",training_folder,".");
set( handles.status1, 'ForegroundColor', [0 0.8 0]);
guidata(hObject, handles);


% --- Executes on button press in extract_feature_and_store.
function extract_feature_and_store_Callback(hObject, eventdata, handles)
% hObject    handle to extract_feature_and_store (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(hObject); 
training_folder_S = handles.training_folder;
training_folder = strcat(training_folder_S,'/*.png');
training_images = dir(training_folder);
headers = {'Index','Mean','Median','Mode','MidRange','Range','IQR','StD'};
feature_vectors = zeros(3000,8);
image_links = zeros(3000,1);
image_links = string(image_links);
count = 1;
total = length(training_images);
total = total / 100;
total = uint16(total);
increase = total;
till_now = 1;
percentage = 1;
processing = ['.'];
for i=1:length(training_images)
    training_image = training_images(i).name;
    training_image = imread(strcat(training_folder_S,'/',training_image));
    training_image = rgb2gray(training_image);
    [x,y] = size(training_image);
    % Calculate Feature Vector 
    Mean = mean2(training_image);
    Median = median(training_image(:));
    Mode = mode(training_image(:));
    Min = min(training_image(:));
    Max = max(training_image(:));
    MidRange = (Min + Max) / 2;
    Range = Max - Min;
    IQR = iqr(double(training_image(:)));
    STD = std2(training_image);
    fp = strcat(training_folder_S,"/",training_images(i).name);
    image_links(count) = fp;
    % feature vector
    feature_vector = [count, Mean, double(Median), double(Mode), double(MidRange), double(Range), double(IQR), STD];
    feature_vectors(count,:) =  feature_vector;
    count = count + 1;
    if i > total 
        till_now = till_now + 1;
        total = total + increase;
        percentage = percentage + 1;
    end
    process_dot = ".";
    for p=1:till_now
        process_dot = strcat(process_dot,".");
    end
    fprintf(":::::::::: Training %s%% ::::::::::\n",string(percentage));
end
fprintf(":::::::::: Training 100%% . DONE ::::::::::\n");
feature_vectors = feature_vectors(1:count-1,:);
image_links = image_links(1:count-1);
database = 'feature_vectors.csv';
csvwrite_with_headers(database,feature_vectors,headers);
fprintf('log :: stored in database by extracting feature vectors from tarining images\n');
handles.status2.String= "Feature extraction and Storing in database successful.";
handles.database = database;
handles.image_links = image_links;
guidata(hObject, handles);

% --- Executes on button press in load_query_image.
function load_query_image_Callback(hObject, eventdata, handles)
% hObject    handle to load_query_image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(hObject);
[query,path] = uigetfile('*.png');
if length(query) < 2
    fprintf('ERROR :: query image loading failed!!!\n');
    handles.status4.String = "Please select a .png file and TRY AGAIN!!!";
    set( handles.status4, 'ForegroundColor', 'red');
    guidata(hObject, handles);
    return;
end
query_image_r = imread(strcat(path,query));
query_image = rgb2gray(query_image_r);
handles.query_image = query_image;
fprintf('log :: query image loaded\n');
handles.status4.String = "Query image loaded successfully.";
delete(handles.status)
imshow(query_image_r,'Parent',handles.axes1)
guidata(hObject, handles);

% --- Executes on button press in show.
function show_Callback(hObject, eventdata, handles)
% hObject    handle to show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(hObject);
row1 = 4;
row2 = 2;
row3 = 3;
% Query image
Mean = mean2(handles.query_image);
Median = median(handles.query_image(:));
Mode = mode(handles.query_image(:));
Min = min(handles.query_image(:));
Max = max(handles.query_image(:));
MidRange = (Min + Max) / 2;
Range = Max - Min;
IQR = iqr(double(handles.query_image(:)));
STD = std2(handles.query_image);
query = [1.0,double(Mean), double(Median), double(Mode), double(MidRange), double(Range), double(IQR), double(STD)];
% 20 most similar image
handles.loaded_data;
handles.image_links;
output = zeros(3000,2);
[x,y] = size(handles.loaded_data);
for i=1:x
    current = 0;
    for j=2:y
        current = current +  abs(handles.loaded_data(i,j) - query(j));
    end
    output(i,2) = handles.loaded_data(i,1);
    output(i,1) = current;
end
output = output(1:x,:);

%output(1:10)

[x,y] = size(output);

for i=1:x-1
    %disp(i);
    swap = 0;
    %disp(x-i);
    for j=1:x-i
        if output(j,1) > output(j+1,1)
            tmp = output(j,:);
            output(j,:) = output(j+1,:);
            output(j+1,:) = tmp;
            swap = 1;
        end
    end
    if swap == 0
        break;
    end
end

%output(1:10)

row1 = uint8(row1);
row2 = uint8(row2);
row3 = uint8(row3);

for i=1:6
    idx = uint16(output(i,2));
    link = handles.image_links(idx);
    link = link{1};
    image = imread(link);
    imshow(image,'Parent',handles.(['axes',num2str(row1)]));
    row1 = row1 + 3;
end

for i=7:13
    idx = uint16(output(i,2));
    link = handles.image_links(idx);
    link = link{1};
    image = imread(link);
    imshow(image,'Parent',handles.(['axes',num2str(row2)]));
    row2 = row2 + 3;
end

for i=14:20
    idx = uint16(output(i,2));
    link = handles.image_links(idx);
    link = link{1};
    image = imread(link);
    imshow(image,'Parent',handles.(['axes',num2str(row3)]));
    row3 = row3 + 3;
end


guidata(hObject, handles);

% --- Executes on button press in load_feature_data.
function load_feature_data_Callback(hObject, eventdata, handles)
% hObject    handle to load_feature_data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(hObject);
[database,path] = uigetfile('*.csv');
if length(database) < 2
    fprintf('ERROR :: feature data loading failed!!!\n');
    handles.status3.String = "Please select a .csv file with features and TRY AGAIN!!!";
    set( handles.status3, 'ForegroundColor', 'red');
    guidata(hObject, handles);
    return;
end
handles.database = strcat(path,database);
try
    handles.loaded_data = csvread(handles.database,1);
    guidata(hObject, handles);
    fprintf('log :: feature data loaded successfully\n');
    handles.status3.String= "Feature data loaded successfully.";
    set( handles.status3, 'ForegroundColor', [0 0.8 0]);
catch ME
    fprintf('ERROR :: feature data loading failed!!!\n');
    handles.status3.String= "Feature data loading FAILED!!!.";
    set( handles.status3, 'ForegroundColor', 'red');
end
