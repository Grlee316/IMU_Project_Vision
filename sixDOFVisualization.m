% Project: Hoof IMU
% Author: Kyle Garcia
% Script: IMU Visualizations
% Date: March 30, 2023
% IMU Scan Rate = 2000 Hz
% Description: Attempting to create a 3D plot to help understand the data
% being measured. The visualizations may not be perfect due to there being
% no filtering at its current state.

clear
clc

% data collection from csv file

%format long
TestDat = readtable('Test_03_12_2023.csv');
time = table2array(TestDat(:,1));
dt = table2array(TestDat(:,2));
scanNum = table2array(TestDat(:,3));
x1 = table2array(TestDat(:,4));
y1 = table2array(TestDat(:,5));
z1 = table2array(TestDat(:,6));

x2 = table2array(TestDat(:,7));
y2 = table2array(TestDat(:,8));
z2 = table2array(TestDat(:,9));

gx1 = table2array(TestDat(:,10));
gy1 = table2array(TestDat(:,11));
gz1 = table2array(TestDat(:,12));

% Concatenate acceleration matrices

ACCEL = [x1 y1 z1];
GYRO = [gx1 gy1 gz1];

% Perform Fusion
pp = poseplot;
FUSE = imufilter(SampleRate=2000);

% Visualization

for i=2:1:length(x1)
    imuDisplay = FUSE(ACCEL(i,:),GYRO(i,:));
    set(pp,"Orientation",imuDisplay)
    drawnow limitrate
end





