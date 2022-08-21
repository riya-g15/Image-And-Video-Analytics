I1=imread("GIRL_WOOD.jpg");
I2=imread("cat.jpg");
I2G=rgb2gray(I2);
I2B=imbinarize(I2G);

%Resizing to 20%
J1= imresize(I2G, 0.5);

%Resizing using neighbouring values
J2=imresize(I2G,0.5,'nearest');

%Resizing by giving manually entered size
J3= imresize(I2G,[500 333]);

figure;
subplot(2,2,1);imshow(I2);title('Original Image')
subplot(2,2,2);imshow(J2);title('Resized Image using Nearest Neighbor')
subplot(2,2,3);imshow(J1);title('Resized Image')
subplot(2,2,4);imshow(J3);title('Resized Image specifying number of rows')


I1G=rgb2gray(I1);
R1 = imrotate(I2G,45,'bilinear');
R2 = imrotate(I2G,45,'crop');
R3 = imrotate(I2G,-45);
figure;
subplot(2,2,1);imshow(I2G);title('Image')
subplot(2,2,2);imshow(R1);title('Rotated Images Bilinear')
subplot(2,2,3);imshow(R2);title('Rotated Images Crop')
subplot(2,2,4);imshow(R3);title('Rotated Images')