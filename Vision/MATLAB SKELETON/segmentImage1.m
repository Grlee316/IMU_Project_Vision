function [BW,maskedImage] = segmentImage1(RGB)
%segmentImage Segment image using auto-generated code from imageSegmenter app
%  [BW,MASKEDIMAGE] = segmentImage(RGB) segments image RGB using
%  auto-generated code from the imageSegmenter app. The final segmentation
%  is returned in BW, and a masked image is returned in MASKEDIMAGE.

% Auto-generated by imageSegmenter app on 20-Oct-2023
%----------------------------------------------------


% Convert RGB image into L*a*b* color space.
X = rgb2lab(RGB);

% Create empty mask.
BW = false(size(X,1),size(X,2));

% Draw ROIs

xPos = [290.2604 311.0459 334.8009 349.6477 360.0405 364.4946 365.9793 368.9486 374.8874 383.7955 385.2802 389.7342 392.7036 394.1883 395.6730 397.1577 398.6423 398.6423 400.1270 400.1270 403.0964 410.5198 414.9739 417.9432 419.4279 422.3973 423.8820 426.8514 431.3054 434.2748 435.7595 435.7595 435.7595 435.7595 435.7595 434.2748 434.2748 437.2441 440.2135 441.6982 444.6676 449.1216 452.0910 456.5450 462.4838 469.9072 471.3919 478.8153 484.7541 490.6928 493.6622 496.6315 502.5703 501.0856 489.2081 486.2387 481.7847 475.8459 471.3919 465.4532 462.4838 460.9991 459.5144 462.4838 466.9378 472.8766 477.3306 481.7847 492.1775 499.6009 512.9631 523.3559 533.7486 547.1108 553.0495 566.4117 575.3198 581.2586 587.1973 588.6820 590.1667 593.1360 596.1054 600.5595 609.4676 612.4369 619.8604 624.3144 627.2838 627.2838 627.2838 627.2838 627.2838 624.3144 622.8297 619.8604 618.3757 616.8910 616.8910 616.8910 616.8910 618.3757 618.3757 619.8604 625.7991 637.6766 651.0387 656.9775 662.9162 667.3703 671.8243 671.8243 664.4009 655.4928 652.5234 649.5541 649.5541 651.0387 656.9775 659.9468 661.4315 664.4009 664.4009 665.8856 667.3703 677.7631 688.1559 698.5486 703.0027 707.4568 708.9414 711.9108 716.3649 716.3649 714.8802 710.4261 707.4568 703.0027 701.5180 698.5486 697.0640 697.0640 697.0640 697.0640 697.0640 697.0640 700.0333 710.4261 719.3342 725.2730 728.2423 734.1811 747.5432 754.9667 760.9054 765.3595 769.8135 774.2676 774.2676 768.3288 763.8748 749.0279 746.0586 740.1198 735.6658 732.6964 726.7577 725.2730 723.7883 722.3036 722.3036 722.3036 723.7883 725.2730 728.2423 735.6658 744.5739 753.4820 757.9360 762.3901 769.8135 772.7829 778.7216 784.6604 787.6297 790.5991 800.9919 814.3541 821.7775 827.7162 858.8946 873.7414 881.1649 884.1342 888.5883 891.5577 893.0423 897.4964 900.4658 909.3739 916.7973 922.7360 925.7054 930.1595 936.0982 937.5829 939.0676 940.5523 943.5216 945.0063 940.5523 937.5829 933.1288 928.6748 912.3432 901.9505 891.5577 882.6495 873.7414 867.8027 864.8333 863.3486 861.8640 860.3793 854.4405 852.9559 851.4712 849.9865 845.5324 838.1090 827.7162 812.8694 787.6297 722.3036 710.4261 700.0333 683.7018 673.3090 668.8550 662.9162 655.4928 637.6766 624.3144 613.9216 602.0441 593.1360 584.2279 575.3198 567.8964 561.9577 558.9883 556.0189 547.1108 535.2333 523.3559 509.9937 499.6009 481.7847 462.4838 449.1216 438.7288 426.8514 404.5811 392.7036 383.7955 376.3721 365.9793 351.1324 346.6784 340.7396 334.8009 328.8622 315.5000 309.5613 302.1378 299.1685 291.7450 287.2910 282.8369 275.4135 275.4135 273.9288 266.5054 247.2045 245.7198 242.7505 238.2964 236.8117 235.3270 232.3577 232.3577 232.3577 232.3577 232.3577 232.3577 235.3270 248.6892 297.6838 312.5306 319.9541 331.8315 340.7396 354.1018 355.5865 358.5559 360.0405 361.5252 364.4946 364.4946 361.5252 357.0712 349.6477 345.1937 334.8009 327.3775 324.4081 318.4694 309.5613 302.1378 291.7450 282.8369 278.3829 267.9901 263.5360 260.5667 257.5973 254.6279 254.6279 254.6279 254.6279 256.1126 262.0514 284.3216 288.7757 291.7450 293.2297 294.7144 300.6532 303.6225 306.5919 308.0766 309.5613 308.6468 307.9455 307.0000 306.0000 305.0000 304.0000 303.0000 302.0000 301.0545 300.2987 299.7558 299.2442 298.7013 297.9455 297.0000 296.0000 295.0000 294.0545 293.3532];
yPos = [635.2027 553.5450 507.5198 488.2189 479.3108 479.3108 479.3108 477.8261 473.3721 465.9486 462.9793 461.4946 460.0099 457.0405 455.5559 454.0712 452.5865 451.1018 451.1018 452.5865 455.5559 467.4333 474.8568 480.7955 485.2495 494.1577 507.5198 519.3973 531.2748 544.6369 556.5144 560.9685 565.4225 568.3919 571.3613 575.8153 583.2387 590.6622 596.6009 602.5396 606.9937 611.4477 612.9324 614.4171 614.4171 614.4171 614.4171 614.4171 609.9631 608.4784 605.5090 599.5703 572.8459 549.0910 509.0045 492.6730 477.8261 460.0099 451.1018 443.6784 440.7090 439.2243 437.7396 437.7396 437.7396 440.7090 442.1937 443.6784 448.1324 449.6171 449.6171 449.6171 451.1018 454.0712 458.5252 462.9793 467.4333 470.4027 473.3721 474.8568 479.3108 482.2802 485.2495 489.7036 494.1577 497.1270 506.0351 517.9126 528.3054 534.2441 543.1523 547.6063 556.5144 580.2694 590.6622 599.5703 604.0243 621.8405 627.7793 633.7180 638.1721 641.1414 642.6261 645.5955 650.0495 654.5036 655.9883 655.9883 655.9883 654.5036 645.5955 629.2640 578.7847 544.6369 528.3054 517.9126 513.4586 507.5198 489.7036 485.2495 482.2802 477.8261 476.3414 474.8568 473.3721 476.3414 485.2495 497.1270 503.0658 509.0045 511.9739 517.9126 537.2135 549.0910 562.4532 571.3613 577.3000 587.6928 595.1162 602.5396 611.4477 617.3865 618.8712 620.3559 621.8405 624.8099 626.2946 629.2640 630.7486 632.2333 632.2333 632.2333 630.7486 626.2946 618.8712 612.9324 604.0243 587.6928 569.8766 546.1216 531.2748 507.5198 504.5505 497.1270 494.1577 489.7036 479.3108 473.3721 467.4333 464.4640 458.5252 452.5865 446.6477 442.1937 437.7396 431.8009 419.9234 408.0459 402.1072 399.1378 393.1991 390.2297 388.7450 387.2604 387.2604 388.7450 396.1685 408.0459 416.9541 422.8928 448.1324 458.5252 464.4640 468.9180 471.8874 477.8261 479.3108 482.2802 482.2802 480.7955 476.3414 474.8568 473.3721 470.4027 464.4640 460.0099 455.5559 452.5865 448.1324 442.1937 419.9234 412.5000 405.0766 399.1378 385.7757 376.8676 364.9901 354.5973 347.1739 336.7811 332.3270 329.3577 326.3883 323.4189 311.5414 308.5721 305.6027 304.1180 295.2099 289.2712 283.3324 277.3937 275.9090 287.7865 290.7559 292.2405 295.2099 296.6946 298.1793 298.1793 293.7252 289.2712 284.8171 281.8477 278.8784 277.3937 274.4243 274.4243 274.4243 274.4243 274.4243 277.3937 278.8784 280.3631 280.3631 283.3324 283.3324 283.3324 280.3631 278.8784 277.3937 277.3937 278.8784 281.8477 281.8477 281.8477 283.3324 286.3018 289.2712 290.7559 295.2099 298.1793 307.0874 314.5108 320.4495 321.9342 332.3270 344.2045 356.0820 370.9288 372.4135 375.3829 382.8063 415.4694 419.9234 433.2856 440.7090 446.6477 454.0712 464.4640 465.9486 468.9180 470.4027 471.8874 473.3721 473.3721 470.4027 449.6171 443.6784 440.7090 431.8009 421.4081 406.5613 403.5919 400.6225 400.6225 400.6225 403.5919 413.9847 425.8622 434.7703 448.1324 457.0405 476.3414 486.7342 492.6730 500.0964 507.5198 516.4279 528.3054 535.7288 541.6676 557.9991 569.8766 575.8153 583.2387 593.6315 596.6009 598.0856 599.5703 601.0550 606.9937 621.8405 626.2946 627.7793 629.2640 630.7486 630.7486 629.2640 627.7793 627.7793 627.7793 628.7558 628.5974 628.8103 629.2987 630.0000 630.6468 631.0000 631.2987 631.7558 632.2987 633.0545 634.0000 635.0000 635.9455 636.7013 637.2987 638.0545 638.9455 639.6468];
m = size(BW, 1);
n = size(BW, 2);
addedRegion = poly2mask(xPos, yPos, m, n);
BW = BW | addedRegion;

% Local graph cut
xPos = [189.9197 959.8236 959.8236 189.9197 ];
yPos = [258.9056 258.9056 661.7286 661.7286 ];
m = size(BW, 1);
n = size(BW, 2);
ROI = poly2mask(xPos,yPos,m,n);
foregroundInd = [];
backgroundInd = [];
L = superpixels(X,6090,'IsInputLab',true);

% Convert L*a*b* range to [0 1]
scaledX = prepLab(X);
BW = BW | grabcut(scaledX,L,ROI,foregroundInd,backgroundInd);

% Create masked image.
maskedImage = RGB;
maskedImage(repmat(~BW,[1 1 3])) = 0;
end

function out = prepLab(in)

% Convert L*a*b* image to range [0,1]
out = in;
out(:,:,1) = in(:,:,1) / 100;  % L range is [0 100].
out(:,:,2) = (in(:,:,2) + 86.1827) / 184.4170;  % a* range is [-86.1827,98.2343].
out(:,:,3) = (in(:,:,3) + 107.8602) / 202.3382;  % b* range is [-107.8602,94.4780].

end
