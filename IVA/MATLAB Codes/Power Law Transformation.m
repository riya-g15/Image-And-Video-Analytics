im=rgb2gray(imread('apple.jfif'));

im1 = im2double(im);
[r, c] = size(im1);

gamma = 3.5;

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
title('Gamma Correction / Power Law Transformation')


 


%% Using Built-in Function

J = imadjust(im,[],[],0.5);
figure;
imshowpair(im,J,"montage");

im=rgb2gray(imread('apple.jfif'));

im1 = im2double(im);
[r, c] = size(im1);

gamma = 3.5;

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
title('Gamma Correction / Power Law Transformation')


 

% 
% %% Using Built-in Function
% 
% J = imadjust(im,[],[],0.5);
% figure;
% imshowpair(im,J,"montage");

