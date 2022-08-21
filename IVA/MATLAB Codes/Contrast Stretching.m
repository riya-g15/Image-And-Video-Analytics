%% Contrast Stretching

image=rgb2gray(imread('GIRL_WOOD.jpg'));

im=double(image);
im_cs = im;
[m,n]=size(im);

Imin = 0;
Imax = 255;
L = 255;

%minp = min(im(:));
%maxp = max(im(:));
minp = 30;
maxp = 210;


alpha = Imin/minp;
beta = (Imax-Imin)/(maxp-minp);
gam = (L-Imax)/(L-maxp);

for i=1:m
for j=1:n
if im(i,j) <= minp
r = im(i,j);
im_cs(i,j) = alpha*r;
elseif im(i,j) > minp && im(i,j)<=maxp
r=im(i,j);
im_cs(i,j) = (beta*(r-minp))+Imin;
else
r=im(i,j);
im_cs(i,j) = (gam*(r-maxp))+Imax;
end
end
end

figure();
subplot(2,2,1);
imshow(image);
title('Original image');

subplot(2,2,2);
imshow(uint8(im_cs)); 
title('Contrast stretching');

subplot(2,2,3);
imhist(image);

subplot(2,2,4);
imhist(uint8(im_cs));

%% Built-in Function

J = imadjust(image,stretchlim(image),[]);
figure;
imshowpair(image,J,"montage");

image = rgb2gray(imread("cat.jpg"));
im_builtin = imresize(image,[128 128]);

figure;
subplot(1,2,1); 
imshow(image); truesize

subplot(1,2,2);
imshow(im_builtin);

im=rgb2gray(imread('oldman.jpg'));

im1 = im2double(im);
[r, c] = size(im1);

gamma = 1.75;

out = abs((1*im1).^gamma);

maxr = max(out(:));
maxc = min(out(:));

for i = 1:r
for j = 1:c
out(i,j) = (255*out(i,j))/(maxr - maxc);
end
end

im_gc = uint8(out);

figure;
subplot(1,2,1);
imshow(im);

subplot(1,2,2);
imshow(im_gc);
title('Power Law Transformation')

%% Using Built-in Function

J = imadjust(im,[],[],1.75);
figure;
imshowpair(im,J,"montage");


% Image Resizing Using Built-in Function

image = rgb2gray(imread("cat.jpg"));
im_builtin = imresize(image,[128 128]);

figure;
imshow(image);
truesize

figure;
imshow(im_builtin);
truesize


% Image Resizing without built-in function

im2 = image;
[r, c] = size(im2);

im_userfunc =[];
new_r = 1;
new_c = 1;

for i=1:2:r
for j=1:2:c
im_userfunc(new_r,new_c) = im2(i,j);
new_c = new_c + 1;
end
new_r = new_r + 1;
new_c = 1;
end

im_userfunc = uint8(im_userfunc);

figure;
imshow(im2);
truesize

figure;
imshow(im_userfunc);
truesize


