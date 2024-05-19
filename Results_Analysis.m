clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
imtool close all;  % Close all imtool figures if you have the Image Processing Toolbox.
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.
format long g;
format compact;
fontSize = 20;

load("KeyFrames.mat", "videoKeyFrames")

% constants
thresholds = 20;
holesize = 2;
hpixels = 1024;
vpixels = 544;
exposureTime = 2.94;
frameHeight = 5.8;
viedeoFilesData = dir("125g/test16 125g.avi");

% creating an array with a larger size than the maximum
% number of frames in a single video
xmax = zeros(numel(viedeoFilesData), 465);

for j = 1:numel(viedeoFilesData)
    fullFileName = fullfile(viedeoFilesData(j).folder, viedeoFilesData(j).name);
    videoObject = VideoReader(fullFileName); 
    % numberOfFrames = videoObject.NumberOfFrame; % revisit
    
    % extracting test name
    testName = extractBefore(viedeoFilesData(j).name, " ");
    fprintf("analyzing %s\n", testName)

    currentTestKeyFrames = videoKeyFrames(testName);
    startFrame = currentTestKeyFrames(1);
    endFrame = currentTestKeyFrames(2);

    % Read one frame at a time
    for k = startFrame:endFrame
	    % Read one frame
	    thisFrame=read(videoObject,k);
        greyscale = double(thisFrame);
        % Create a binary mask of pixels above threshold
        iswhite = greyscale >= thresholds;
    
        % Filter out small blobs.
	    iswhite = bwareaopen(iswhite, holesize);
	    % Fill holes
	    iswhite = imfill(iswhite, 'holes');
        % imtool(iswhite)
    
         % for each coloumn find the first '1' which is the highest in the image
        [maxValues,rowIndex] = max(iswhite,[],1);
        for i = 1 : (hpixels)
            if maxValues(i) == 0
                rowIndex(i) = vpixels+1;
            end
        end
        % find the row with the highest '1', which is the min
        xmax(j, k-startFrame+1) = vpixels - min(rowIndex);
        
    end 

    save("xmax_results150new.mat",  "xmax");
    fprintf("Finished analyzing %s. updating xmax results at 'xmax_results150new.mat'\n", testName); 

    figure(j)
    plot((1:(endFrame-startFrame+1)).*exposureTime, xmax(j,1:(endFrame-startFrame+1)).*(frameHeight/vpixels))
    title('Horizontal Location as a Function of Time for', testName)
    xlabel('t (ms)')
    ylabel ('x (cm)')
    hold on

    saveas(figure(j), testName);
end