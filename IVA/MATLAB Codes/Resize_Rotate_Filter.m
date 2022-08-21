I1=imread("GIRL_WOOD.jpg");
I2=imread("WOODS.jpg");
I3=imread("PATTERN.jpg");
I3G=rgb2gray(I3);
I3B=imbinarize(I3G);
J1= imresize(I1, 0.2);
J2=imresize(I1,0.2,'nearest');
J3= imresize(I1,[128 NaN]);

figure;
subplot(2,2,1);imshow(I1);title('Original Image')
subplot(2,2,2);imshow(J2);title('Resized Image using Nearest Neighbor')
subplot(2,2,3);imshow(J1);title('Resized Image')
subplot(2,2,4);imshow(J3);title('Resized Image specifying number of rows')


I1G=rgb2gray(I1);
R1 = imrotate(I3,5,'bilinear');
R2 = imrotate(I3G,-5,'crop');
R3 = imrotate(I3B,5);
figure;
subplot(2,3,1);imshow(I3);title('Coloured Image')
subplot(2,3,2);imshow(I3G);title('Grayscale Image')
subplot(2,3,3);imshow(I3B);title('B/W Image')
% subplot(2,3,4);imshow(R1);
% subplot(2,3,5);imshow(R2);title('Rotated Images')
% subplot(2,3,6);imshow(R3);

I1=imread("GIRL_WOOD.jpg");
I2=imread("WOODS.jpg");
I1G=rgb2gray(I1);
I2G=rgb2gray(I2);
E = histeq(I2G);
E1 = histeq(I1G);
figure;
subplot(4,2,1);imshow(I2G);
subplot(4,2,2);imhist(I2G,64);
subplot(4,2,3);imshow(E);
subplot(4,2,4);imhist(E,64);
subplot(4,2,5);imshow(I1G);
subplot(4,2,6);imhist(I1G,64);
subplot(4,2,7);imshow(E1)
subplot(4,2,8);imhist(E1,64);

I1G=rgb2gray(I1);
I1_NOISE= imnoise(I1G,'gaussian', 0.06);
I1_AVG = filter2(fspecial('average',5), I1_NOISE)/255;
I1_MED = medfilt2(I1_NOISE);
Motion= fspecial('motion',40,60);
I1_MOTION= imfilter(I1,Motion,'replicate');
Blur= fspecial('disk',10);
I1_BLUR= imfilter(I1,Blur,'replicate'); 
figure;
subplot(3,2,1); imshow(I1); title('Original Image');
subplot(3,2,2); imshow(I1_NOISE); title('Noisy Image');
subplot(3,2,3); imshow(I1_AVG); title('Average Filtering');
subplot(3,2,4); imshow(I1_MED); title('Median Filtering');
subplot(3,2,5); imshow(I1_MOTION); title('Motion Filtering');
subplot(3,2,6); imshow(I1_BLUR); title('Blur Filtering');







