% Image Smoothing Techniques

% Mean Filtering

im = rgb2gray(imread("oldman.jpg"));

h = fspecial('average',[6 6]);
newim = imfilter(im,h);

% Inference:
% The mean filtering have made the image smooth by blurring it on 8x8 matrix.

% % 2.Using Median Filter

% %Median Filtering
im2 = imread('oldman.jpg');

imrgb = rgb2gray(im2);

newimrgb = medfilt2(imrgb,[6 6]);

figure;
subplot(2,1,1);imshowpair(im,newim,'montage');title('Images before and after mean filtering')

subplot(2,1,2);imshowpair(imrgb,newimrgb,'montage');title('Images before and after median filtering')
title('Normal Image');

% Inference:
% The median smoothing have blurred the edges of the image on 9x9 matrix. And for comparison Median filtering is better than the mean filtering as it clearly preserves the sharp edges.

% 3.Using Gaussian Filter
% 
% 
% % Gaussian filter

figure;

subplot(1,2,1);
imshow(imgaussfilt(imrgb,1.5));
title('Gaussian Filtered Image with sigma 1.5');

subplot(1,2,2);
imshow(imgaussfilt(imrgb,3));
title('Gaussian Filtered Image with sigma 3');

% 
% 
%  
% 
% Inference:
% Gaussian filter alters the image when we change the value of standard deviation. The greater the sigma the blurry , smooth the image becomes. No sharp edges can be seen but the dark and light areas can be easily observed.
% 
% 
% 
% 4.Some Filtering Techniques
% 
% % Some more filtering
imgray = rgb2gray(imread('coin.png'));

% Image Filtering

figure;
subplot(2,3,1);
imshow(imgray);
title('Original Image');

subplot(2,3,2);
imshow(imfilter(imgray,fspecial('motion',25,45)));
title('Linear Special Filter');

subplot(2,3,3);
imshow(imfilter(imgray,[-31 0 32]));
title('Linear Filtering');

subplot(2,3,4);
imshow(medfilt2(imgray,[9 9]));
title('Median Filter');

subplot(2,3,5);
imshow(imgaussfilt(imgray,12));
title('Gaussian Filter');

subplot(2,3,6);
imshow(imboxfilt(imgray,15));
title('Box Filtering');

% 
% 
%  
% 
% Inference:
% The different types of filtering can be seen. Some median , Gaussian , box filtering blurring the image whereas in entropy aAnd standard deviation we cannot infer much. Non-linear looks like original image just it is like given the effect of histogram equalization. Linear filter have given the effect of thresholding the image with blurry touch.
% 
% 
% 
% 
% 1.  It is an pre-processing technique. Filtering is a process to enhance an image in various ways. Where the altered pixel value is calculated by some algorithms applied on it using the neighbourhood values or some times a convolution layer. It is used to blur the images as well as smoothen it. Can be used to remove different type of noises in the image.
% 
% 
% 2.  Let H be an operator whose input and output images iS said to be linear operator if f for any two images  f & g and any two scalars a and b 
% H(af+bg) =  aH(f)+bH(g) 
% 
% And operator that fails the test above equation by definition is nonlinear point operation.
% Also , Linear filters can use convolution layer where as non-linear does not.
% 
% 
% 3. Advantages of Linear Filtering are : -
% 
% i) It is one of the most powerful enhancement techniques
% ii) Smoothing of image is done
% iii) contrast improvement
% iv) De-noising, and sharpening, 
% v) As well as for more object- or feature-specific tasks such as target matching and feature enhancement.
% % Image Smoothing Techniques
% 
