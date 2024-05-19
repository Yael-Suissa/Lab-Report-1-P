clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
imtool close all;  % Close all imtool figures if you have the Image Processing Toolbox.
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.
format long g;
format compact;
fontSize = 20;

load("KeyFramesFall.mat", "videoKeyFrames")

% constants
thresholds = 70;
holesize = 2;
hpixels = 2048;
vpixels = 1088;
exposureTime = 6.00;
frameWidth = 91;
viedeoFilesData = dir("25g/test*g.avi");

% creating an array with a larger size than the maximum
% number of frames in a single video
ymin = zeros(numel(viedeoFilesData), 183);

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
    for k = startFrame : endFrame
	    % Read one frame
	    thisFrame=read(videoObject,k);
        greyscale = double(thisFrame);
        % Create a binary mask of pixels above threshold
        iswhite = greyscale >= thresholds;
    
        % Filter out small blobs.
	    iswhite = bwareaopen(iswhite, holesize);
	    % Fill holes
	    iswhite = imfill(iswhite, 'holes');
    
         % for each row find the first '1' which is the highest in the image
        [maxValues,colIndex] = max(iswhite,[],2);
        for i = 1 : (vpixels)
            if maxValues(i) == 0
                colIndex(i) = hpixels+1;
            end
        end
        % find the row with the highest '1', which is the min
        ymin(j, k-startFrame+1) = hpixels - min(colIndex);
        % if k == 146
        %     figure(1);
        %     imshow(iswhite);
        % end
                
    end 

    save("ymin_results25mean.mat",  "ymin");
    fprintf("Finished analyzing %s. updating ymin results at 'ymin_results**.mat'\n", testName); 
     
    % figure(j);
    % plot((1:(endFrame-startFrame+1)).*exposureTime, ymin(j,1:(endFrame-startFrame+1)).*(frameWidth/hpixels)-(ymin(j,1).*(frameWidth/hpixels)))
    % title('Vertical Location as a Function of Time for', viedeoFilesData(j).folder)
    % xlabel('t (ms)')
    % ylabel ('x (cm)')
    % hold on
    
    % saveas(figure(j), testName);
end