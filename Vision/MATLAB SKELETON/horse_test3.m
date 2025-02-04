clc
clear all
close all
warning off

% Create an object to read video files
% We will read for this example, the video 5
c = VideoReader('Horse-1.mp4');

% Timestamp of video frame to read
% by setting up Current Time = 0.5, we will start reading the video from
% 0.5s
c.CurrentTime = 0.5;

% Create a VideoWriter object to save the output video (optional)
% outputVideoFile = 'output_video.avi';
% outputVideoWriter = VideoWriter(outputVideoFile, 'Uncompressed AVI');
% open(outputVideoWriter);

% While the video frame is available to read
while hasFrame(c)

    % videoframe is equal to the next video frame of object c
    vidFrame = readFrame(c);

    % Threshold the current frame using createMask6 function
    % Mask is obtained from a stillframe captured from one of the video
    % We then used the stillframe to create mask by using color tresholder
    [BW, ~] = createMask9(vidFrame);

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

    % Measure properties of the image region (blobs)
    % Area will gives you Actual number of pixels in the region, returned as a scalar. 
    % This value might differ slightly from the value returned by bwarea, 
    % which weights different patterns of pixels differently
    blobMeasurements = regionprops(labeledFrame, 'Area');

    % Find the index of the largest blob using the maximium element of
    % array. we will ignorethe max number and just grabbing the index (idx)
    [~, idx] = max([blobMeasurements.Area]);

    % Create a binary mask with only the largest blob
    % ismember will return an array elements that are amembers of set array
    largestBlobMask = ismember(labeledFrame, idx);

    % Convert logical mask to uint8 (8-bit unsigned integer)
    largestBlobMaskUint8 = im2uint8(largestBlobMask);

    % Write the frame with the largest blob to the output video (optional)
    % writeVideo(outputVideoWriter, largestBlobMaskUint8);

    % ======
    % Display the original frame with the largest blob
    % This part will show the horse as the whole horse instead of the
    % skeleton part
    % imshowpair(vidFrame, largestBlobMask, 'blend');
    % -------

    % ======
    % this is the part from the previous code that will show the "skeleton"
    % part of the horse

    % bwmorph will create a morphological operations on binary image
    % skel will give the "image skeleton"
    % remove will give the outline of the horse
    % will will applies the operation until the image no longer changes
    mkdir4 = bwmorph(largestBlobMask,'skel',inf);
    mkdir5 = bwmorph(mkdir4, 'skel', 'branchpoints');

    % imshowpair will compare the difference between images
    % montage will show image a and b next to each other
    % blend will overlays image a and b using alpha blending
    imshowpair(vidFrame,mkdir5,'blend');

    % pause will stop MATLAB execution temporarily
    % c is the video file object
    
    % pause(1/c.FrameRate);
    % -------
end

% Close the output video writer (optional)
% close(outputVideoWriter);
