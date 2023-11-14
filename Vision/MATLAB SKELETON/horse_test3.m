clc
clear all
close all
warning off

% Create an object to read video files
% We will read for this example, the video 5
c = VideoReader('Horse-5.mp4');

% Timestamp of video frame to read
% by setting up Current Time = 0.5, we will start reading the video from
% 0.5s
c.CurrentTime = 0.5;

% Create a VideoWriter object to save the output video (optional)
outputVideoFile = 'output_video.avi';
outputVideoWriter = VideoWriter(outputVideoFile, 'Uncompressed AVI');
open(outputVideoWriter);

% While the video frame is available to read
while hasFrame(c)

    % videoframe is equal to the next video frame of object c
    vidFrame = readFrame(c);

    % Threshold the current frame using createMask6 function
    % Mask is obtained from a stillframe captured from one of the video
    % We then used the stillframe to create mask by using color tresholder
    [BW, ~] = createMask6(vidFrame);

    % Perform morphological operations to enhance the binary mask (optional)
    % This function will create a flat structuring element
    % create a square structuring element whose width is 5 pixels
    B = strel('square', 5);

    % imopen will performs morphologically opening on the grayscale binary
    % image BW (after masking the frame with our mask) using structuring
    % element B ~ by doing this operation, we will remove the object that
    % having a square width that's less than 5 pixels
    BW = imopen(BW, B);
    BW = imclose(BW, B); % morphologically close the image

    % Detect blobs using bwlabel
    % bwlabel will label connected components in 2-D binary image

    % labeled Frame will contain the label matrix that contains labels for
    % the 8-connected objects found in BW
    % ------------------------------------
    % numBlobs will contain the number of connected objects found in BW
    [labeledFrame, numBlobs] = bwlabel(BW);

    %%%%NEED TO COMMENT

    % Measure properties of the blobs
    blobMeasurements = regionprops(labeledFrame, 'Area');

    % Find the index of the largest blob
    [~, idx] = max([blobMeasurements.Area]);

    % Create a binary mask with only the largest blob
    largestBlobMask = ismember(labeledFrame, idx);

    % Convert logical mask to uint8
    largestBlobMaskUint8 = im2uint8(largestBlobMask);

    % Write the frame with the largest blob to the output video (optional)
    writeVideo(outputVideoWriter, largestBlobMaskUint8);

    % Display the original frame with the largest blob

    % imshowpair(vidFrame, largestBlobMask, 'montage');

    mkdir4 = bwmorph(largestBlobMask,'skel',inf);
    imshowpair(vidFrame,mkdir4,'montage');
    pause(1/c.FrameRate);
end

% Close the output video writer (optional)
close(outputVideoWriter);
