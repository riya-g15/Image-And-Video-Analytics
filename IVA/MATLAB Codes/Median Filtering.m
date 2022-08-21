% % Median Filtering
% 
im2 = imread('GIRL_WOOD.jpg');
imrgb = rgb2gray(im2);
im=imnoise(imrgb,'salt & pepper',0.18);
newim3 = medfilt2(im,[3 3]);
newim5 = medfilt2(im,[5 5]);

figure;
subplot(2,2,1);imshow(im2);
title('Normal Image');

subplot(2,2,2);imshow(im);
title('Image with noise');

subplot(2,2,3);imshow(newim3);
title('Median Filter with 3x3');

subplot(2,2,4);imshow(newim5);
title('Median Filter with 5x5');

%median filtering without using inbuilt function (kernel 3X3)

a= rgb2gray(imread('GIRL_WOOD.jpg'));
c=imnoise(a,"salt & pepper",0.15);
b = im2double(c);
[m,n] = size(b);
A = 2;
medf1 = zeros(m,n);
for i = 2:m-1
    for j = 2:n-1
        medf1(i,j) = median([b(i-1,j-1) b(i-1,j) b(i-1,j+1) b(i,j-1) b(i,j) b(i,j+1) b(i+1,j-1) b(i+1,j) b(i+1,j+1)]);
    end
end

figure;

subplot(2,2,1);imshow(a);
title('Normal Image');

subplot(2,2,2);imshow(b);
title('Image with noise');

subplot(2,2,3);imshow(medf1);
title('Median Filtering with kernel 3x3');







