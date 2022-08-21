% sharpening of image with different kernel sizes
F=double(rgb2gray(imread('oldman.jpg')));
H=F;
I=F;
[rows,cols]=size(F);
A=[0,-0.5,0;-0.5,3,-0.5;0,-0.5,0];
B=[0,-1,0;-1,5,-1;0,-1,0];
G1=zeros(3,3);
G2=zeros(3,3);
for i = 2:rows-1
    for j = 2:cols-1
   
    for k=-1:1
        for l=-1:1
        G1(k+2,l+2)=F(i+k,j+l)*A(k+2,l+2);
        G2(k+2,l+2)=F(i+k,j+l)*B(k+2,l+2);
        end
    end
    H(i,j)=sum(sum(G1));
    I(i,j)=sum(sum(G2));
    end
end
H = uint8(round(H - 1));
I = uint8(round(I - 1));
figure();
subplot(2,2,1);
imshow(uint8(F));
title('Input Image for Sharpening Filters');
subplot(2,2,2)
imshow(H);
title('Output Sharpened Image for kernel A=[0,-0.5,0;,-0.5,3,-0.5;0,-0.5,0]');
subplot(2,2,3)
imshow(I);
title('Output Sharpened Image for kernel  B=[0,-1,0;-1,5,-1;0,-1,0]');
% 
% 

a = rgb2gray(imread(['cat.jpg']));
a=imnoise(a,"salt & pepper");
b = im2double(a);
[m,n] = size(b);
A = 2;
maxf = zeros(m,n);
medf = zeros(m,n);
midf = zeros(m,n);
for i = 2:m-1
    for j = 2:n-1
        maxf(i,j) = max([b(i-1,j-1) b(i-1,j) b(i-1,j+1) b(i,j-1) b(i,j) b(i,j+1) b(i+1,j-1) b(i+1,j) b(i+1,j+1)]);
        medf(i,j) = median([b(i-1,j-1) b(i-1,j) b(i-1,j+1) b(i,j-1) b(i,j) b(i,j+1) b(i+1,j-1) b(i+1,j) b(i+1,j+1)]);
        midf(i,j) = mean([max([b(i-1,j-1) b(i-1,j) b(i-1,j+1) b(i,j-1) b(i,j) b(i,j+1) b(i+1,j-1) b(i+1,j) b(i+1,j+1)]),min([b(i-1,j-1) b(i-1,j) b(i-1,j+1) b(i,j-1) b(i,j) b(i,j+1) b(i+1,j-1) b(i+1,j) b(i+1,j+1)])]);
    end
end
figure;
subplot(2,2,1)
imshow(a);title('original image');
subplot(2,2,2)
imshow(maxf);title('Max Filtering');
subplot(2,2,3)
imshow(medf);title('Median Filtering');
subplot(2,2,4)
imshow(midf);title('Mid Point Filtering');


a = rgb2gray(imread('cat.jpg'));
b = im2double(a);
[m,n] = size(b);
A = 2;
c = zeros(m,n);
f = zeros(m,n);
for i = 2:m-1
    for j = 2:n-1
        c(i,j) = (1/9)*(b(i-1,j-1) + b(i-1,j) + b(i-1,j+1) + ...
            b(i,j-1) + b(i,j) + b(i,j+1) + b(i+1,j-1) + ...
            b(i+1,j) + b(i+1,j+1));
        d(i,j) = (1/16)*(b(i-1,j-1) + b(i-1,j) + b(i-1,j+1) + ...
            b(i,j-1) + b(i,j) + b(i,j+1) + b(i+1,j-1) + ...
            b(i+1,j) + b(i+1,j+1));
    end
end

figure;
subplot(2,2,1)
imshow(b);title('original image');
subplot(2,2,2)
imshow(c);title('low pass filtered image (smoothed)');
subplot(2,2,3)
imshow(d);title('low pass filtered image (smoothed) - 1/16');


im = rgb2gray(imread("cat.jpg"));
h = fspecial('average',[10 10]);
newim = imfilter(im,h);
figure;
imshowpair(im,newim,'montage');title('Images before and after mean filtering')
Median Filtering


im2 = imread('cat.jpg');
imrgb = rgb2gray(im2);
imrgb=imnoise(imrgb,'salt & pepper')
newimrgb = medfilt2(imrgb,[9 9]);
figure;
subplot(1,2,1);imshow(imrgb);
title('Normal Image');
subplot(1,2,2);imshow(newimrgb);
title('Median Filter with 9x9');


im2= rgb2gray(imread('oldman.jpg'))
figure;
subplot(2,2,1);
imshow(im2);
title('Image');
subplot(2,2,2);
imshow(imsharpen(im2));
title('Sharpened Image');