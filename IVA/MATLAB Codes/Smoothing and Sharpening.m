% Image Smoothing Techniques
% Mean Filtering

im = imread("GIRL_WOOD.jpg");

h = fspecial('average',[10 10]);
newim = imfilter(im,h);

figure;
imshowpair(im,newim,'montage');title('Images before and after mean filtering')

figure;
subplot(1,2,1);
histogram(im);
title('Histogram of Normal Image');

subplot(1,2,2);
histogram(newim);
title('Histogram of Mean Smoothened Image');

% Median Filtering
im2 = imread('GIRL_WOOD.jpg');

imrgb = rgb2gray(im2);

newimrgb = medfilt2(imrgb,[9 9]);

figure;
subplot(1,2,1);imshow(imrgb);
title('Normal Image');

subplot(1,2,2);imshow(newimrgb);
title('Median Filter with 9x9');

I = imread('GIRL_WOOD.jpg');
J = imnoise(I,'salt & pepper',0.1);

K = medfilt3(J,[3 3 3]);

figure
subplot(131);imshow(I);title('Original image');

subplot(132);imshow(J);title('Image with Noise');

subplot(133);imshow(K);title('Image After Removing Noise');

% Image Sharpening

im2= imread('dog.jfif')
figure;

subplot(2,2,1);
imshow(im2);
title('Colored Image');

subplot(2,2,2);
imshow(imsharpen(im2));
title('Sharpened Image');

subplot(2,2,3);
imshow(imsharpen(im2,'Radius',2));
title('Sharpened image with one parameter');

subplot(2,2,4);
imshow(imsharpen(im2,'Radius',2,'Amount',2));
title('Sharpened Image with 2 parameters');








