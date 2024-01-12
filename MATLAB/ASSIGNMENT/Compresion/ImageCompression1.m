function varargout = ImageCompression1(varargin)

%GUI formation
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ImageCompression_OpeningFcn, ...
                   'gui_OutputFcn',  @ImageCompression_OutputFcn, ...
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


function ImageCompression_OpeningFcn(hobj, event, handle, varargin)

handle.output = hobj;

guidata(hobj, handle);
guidata(hobj, handle);

set(handle.axes3,'visible','off')
set(handle.axes4,'visible','off')

axis off
axis off

function varargout = ImageCompression_OutputFcn(hobj, event, handle) 

varargout{1} = handle.output;


function pushbutton1_Callback(hobj, event, handle)

global file_name;

%the program is sufficient to work with all types of extension
file_name=uigetfile({'*.bmp;*.jpg;*.png;*.tiff;';'*.*'},'Select an Image File');
fileinfo = dir(file_name);

SIZE = fileinfo.bytes;
Size = SIZE/1024;

% axes(axisHandle)
% matlabImage = imread('file_name');
% image(matlabImage)
% axis off
% axis image


%displaying current size in the GUI
set(handle.text7,'string',Size);

imshow(file_name,'Parent', handle.axes3)


function pushbutton2_Callback(hobj, event, handle)

global file_name;
if(~ischar(file_name))
   errordlg('Please select Images first');
else
    I1 = imread(file_name);

    %masking the 1st frame
    I = I1(:,:,1);
    I = im2double(I);
    %Discrete cosine transform matrix
    T = dctmtx(8);
    B = blkproc(I,[8 8],'P1*x*P2',T,T');
    mask = [1   1   1   1   0   0   0   0
            1   1   1   0   0   0   0   0
            1   1   0   0   0   0   0   0
            1   0   0   0   0   0   0   0
            0   0   0   0   0   0   0   0
            0   0   0   0   0   0   0   0
            0   0   0   0   0   0   0   0
            0   0   0   0   0   0   0   0];
    B2 = blkproc(B,[8 8],'P1.*x',mask);
    I2 = blkproc(B2,[8 8],'P1*x*P2',T',T);
    
    %masking the 2nd frame
    I = I1(:,:,2);
    I = im2double(I);
    T = dctmtx(8);
    B = blkproc(I,[8 8],'P1*x*P2',T,T');
    mask = [1   1   1   1   0   0   0   0
            1   1   1   0   0   0   0   0
            1   1   0   0   0   0   0   0
            1   0   0   0   0   0   0   0
            0   0   0   0   0   0   0   0
            0   0   0   0   0   0   0   0
            0   0   0   0   0   0   0   0
            0   0   0   0   0   0   0   0];
    B2 = blkproc(B,[8 8],'P1.*x',mask);
    I3 = blkproc(B2,[8 8],'P1*x*P2',T',T);
    
    %masking the 3rd frame
    I = I1(:,:,3);
    I = im2double(I);
    T = dctmtx(8);
    B = blkproc(I,[8 8],'P1*x*P2',T,T');
    mask = [1   1   1   1   0   0   0   0
            1   1   1   0   0   0   0   0
            1   1   0   0   0   0   0   0
            1   0   0   0   0   0   0   0
            0   0   0   0   0   0   0   0
            0   0   0   0   0   0   0   0
            0   0   0   0   0   0   0   0
            0   0   0   0   0   0   0   0];
    B2 = blkproc(B,[8 8],'P1.*x',mask);
    I4 = blkproc(B2,[8 8],'P1*x*P2',T',T);
    
    %concatinating all 3 frames
    L(:,:,:)=cat(3,I2, I3, I4);
    %writing into the file
    imwrite(L,'CompressedColourImage.jpg');
    
    fileinfo = dir('CompressedColourImage.jpg');

    SIZE = fileinfo.bytes;
    Size = SIZE/1024;

    %displaying in the gui

    set(handle.text8,'string',Size);
    imshow(L,'Parent', handle.axes4)
end



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
