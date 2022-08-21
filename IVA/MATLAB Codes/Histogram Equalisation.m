I1=imread("mickey.png");

%Contrast Enhancement on Grayscale image
I1G= rgb2gray(I1);
% plot_hist1 = imhist(I1G);
% 
% I1_imadjust = imadjust(I1G,[0.55 0.9],[]); %140 to 230
% plot_hist2 = imhist(I1_imadjust);
% 
% I2_imadjust = imadjust(I1G,[0.3 0.6],[]); %77 to 155
% plot_hist5 = imhist(I2_imadjust);
% 
% I3_imadjust = imadjust(I1G,[0.1 0.9],[]); %25.5 to 230
% plot_hist6 = imhist(I3_imadjust);
% 
% I1_histeq = histeq(I1G);
% plot_hist3 = imhist(I1_histeq);
% 
% I1_adapthisteq = adapthisteq(I1G);
% plot_hist4 = imhist(I1_adapthisteq);
% 
% figure;
% subplot(2,3,1);imshow(I1);title('Original image');
% subplot(2,3,2);imshow(I1_imadjust);title('imadjust image');
% subplot(2,3,3);imshow(I2_imadjust);title('imadjust image');
% subplot(2,3,4);imshow(I3_imadjust);title('imadjust image');
% subplot(2,3,5);imshow(I1_histeq);title('histeq image');
% subplot(2,3,6);imshow(I1_adapthisteq);title('adapthisteq image');
% 
% %Histogram of the above images
% figure;
% subplot(2,3,1);imhist(I1G);title('Histogram of Orignal image');
% subplot(2,3,2);imhist(I1_imadjust);title('Histogram of imadjust image');
% subplot(2,3,3);imhist(I2_imadjust);title('Histogram of imadjust image');
% subplot(2,3,4);imhist(I3_imadjust);title('Histogram of imadjust image');
% subplot(2,3,5); imhist(I1_histeq);title('Histogram of histeq image');
% subplot(2,3,6);imhist(I1_adapthisteq);title('Histogram of adapthisteq image');

%----------------------------------------------------------------------------------------------------------

%Contrast Stretching
image = rgb2gray(imread('mickey.png'));
stretched_Image = imadjust(image, stretchlim(image, [0.4, 0.8]),[0.2, 0.6]);

subplot(2,2,1), imshow(image), title('Original Image');
subplot(2,2,2), imshow(stretched_Image), title('Stretched Image');
subplot(2,2,3), imhist(image), title('Histogram of Original Image');
subplot(2,2,4), imhist(stretched_Image), title('Histogram of Stretched Image');