% % import the video file
% obj = VideoReader('riya.mp4');
% vid = read(obj);
% 
% % read the total number of frames
% frames = obj.NumFrames;
% 
% % file format of the frames to be saved in
% ST ='.jpg';
% 
% % reading and writing the frames
% for x = 1 : frames
% 
% 	% converting integer to string
% 	Sx = num2str(x);
% 
% 	% concatenating 2 strings
% 	Strc = strcat(Sx, ST);
% 	Vid = vid(:, :, :, x);
% 	cd frames
% 
% 	% exporting the frames
% 	imwrite(Vid, Strc);
%     cd ..
% end
% 
% %
% % Edge detection using Sobel operator 
% % MATLAB Code | Sobel Operator from Scratch
% 
% % Read Input Image
% input_image1 = imread('cat.jpg');
% 
% % Displaying Input Image
% input_image = uint8(input_image1);
% 
% % Convert the truecolor RGB image to the grayscale image
% input_image = rgb2gray(input_image);
% 
% % Convert the image to double
% input_image = double(input_image);
% 
% % Pre-allocate the filtered_image matrix with zeros
% filtered_image = zeros(size(input_image));
% 
% % Sobel Operator Mask
% Mx = [-1 0 1; -2 0 2; -1 0 1];
% My = [-1 -2 -1; 0 0 0; 1 2 1];
% 
% % Edge Detection Process
% % When i = 1 and j = 1, then filtered_image pixel
% % position will be filtered_image(2, 2)
% % The mask is of 3x3, so we need to traverse
% % to filtered_image(size(input_image, 1) - 2
% %, size(input_image, 2) - 2)
% % Thus we are not considering the borders.
% for i = 1:size(input_image, 1) - 2
% 	for j = 1:size(input_image, 2) - 2
% 
% 		% Gradient approximations
% 		Gx = sum(sum(Mx.*input_image(i:i+2, j:j+2)));
% 		Gy = sum(sum(My.*input_image(i:i+2, j:j+2)));
% 				
% 		% Calculate magnitude of vector
% 		filtered_image(i+1, j+1) = sqrt(Gx.^2 + Gy.^2);
% 		
% 	end
% end
% 
% % Displaying Filtered Image
% filtered_image = uint8(filtered_image);
% 
% % Define a threshold value
% thresholdValue = 140; % varies between [0 255]
% output_image = max(filtered_image, thresholdValue);
% output_image(output_image == round(thresholdValue)) = 0;
% 
% % Displaying Output Image
% output_image = imbinarize(output_image);
% figure, 
% subplot(2,2,1);imshow(input_image1); title('Input Image');
% subplot(2,2,2);imshow(filtered_image); title('Filtered Image');
% subplot(2,2,3);imshow(output_image); title('Edge Detected Image');
%%

% % operator edge detection using Prewitt
% k=imread("GIRL_WOOD.jpg");
% k=rgb2gray(k);
% k1=double(k);
% 
% % prewitt mask
% p_msk=[-1 0 1; -1 0 1; -1 0 1];
% 
% kx=conv2(k1, p_msk, 'same');
% ky=conv2(k1, p_msk', 'same');
% ked=sqrt(kx.^2 + ky.^2);
% 
% figure;
% % display the images.
% subplot(2,2,1);imshow(k,[]);title('Original Image');
% % display the edge detection along x-axis.
% subplot(2,2,2);imshow(abs(kx), []);title('Along x-axis');
% % display the edge detection along y-axis.
% subplot(2,2,3);imshow(abs(ky), []);title('Along y-asix');
% % display the full edge detection.
% subplot(2,2,4);imshow(abs(ked),[]);title("Edge Detected");
% %%
% %Scharr operator -> edge detection
% k=imread("cat.jpg");
% k=rgb2gray(k);
% k1=double(k);
% s_msk=[-3 0 3; -10 0 10; -3 0 3];
% kx=conv2(k1, s_msk, 'same');
% ky=conv2(k1, s_msk', 'same');
% ked=sqrt(kx.^2 + ky.^2);
% 
% figure;
% % display the images.
% subplot(2,2,1);imshow(k,[]);title('Original Image');
% % display the edge detection along x-axis.
% subplot(2,2,2);imshow(abs(kx), []);title('Along x-axis');
% % display the edge detection along y-axis.
% subplot(2,2,3);imshow(abs(ky), []);title('Along y-asix');
% % display the full edge detection.
% subplot(2,2,4);imshow(abs(ked),[]);title("Edge Detected");
% %%
% MATLAB Code | Robert Operator from Scratch

% % Read Input Image
% input_image = imread('cameraman.tif');
% 
% % Displaying Input Image
% input_image = uint8(input_image);
% figure, imshow(input_image); title('Input Image');
% 
% % Convert the truecolor RGB image to the grayscale image
% % input_image = rgb2gray(input_image);
% 
% % Convert the image to double
% input_image = double(input_image);
% 
% % Pre-allocate the filtered_image matrix with zeros
% filtered_image = zeros(size(input_image));
% 
% % Robert Operator Mask
% Mx = [1 0; 0 -1];
% My = [0 1; -1 0];
% 
% % Edge Detection Process
% % When i = 1 and j = 1, then filtered_image pixel
% % position will be filtered_image(1, 1)
% % The mask is of 2x2, so we need to traverse
% % to filtered_image(size(input_image, 1) - 1
% %, size(input_image, 2) - 1)
% for i = 1:size(input_image, 1) - 1
% 	for j = 1:size(input_image, 2) - 1
% 
% 		% Gradient approximations
% 		Gx = sum(sum(Mx.*input_image(i:i+1, j:j+1)));
% 		Gy = sum(sum(My.*input_image(i:i+1, j:j+1)));
% 				
% 		% Calculate magnitude of vector
% 		filtered_image(i, j) = sqrt(Gx.^2 + Gy.^2);
% 		
% 	end
% end
% 
% % Displaying Filtered Image
% filtered_image = uint8(filtered_image);
% figure, imshow(filtered_image); title('Filtered Image');
% 
% % Define a threshold value
% thresholdValue = 100; % varies between [0 255]
% output_image = max(filtered_image, thresholdValue);
% output_image(output_image == round(thresholdValue)) = 0;
% 
% % Displaying Output Image
% output_image = imbinarize(output_image);
% figure, imshow(output_image); title('Edge Detected Image');
%%
% MATLAB code for
% % Edge detection using Laplacian Filter.
% k=imread('PATTERN.jpg');
% 
% % Convert rgb image to grayscale.
% k1=rgb2gray(k);
% 
% % Convert into double format.
% k1=double(k1);
% 
% % Define the Laplacian filter.
% Laplacian=[0 1 0; 1 -4 1; 0 1 0];
% 
% % Convolve the image using Laplacian Filter
% k2=conv2(k1, Laplacian, 'same');
% 
% % Display the image.
% figure;
% subplot(1,2,1);imshow(k1, []); title('Original Image');
% subplot(1,2,2);imshow(abs(k2),[]); title('Laplacian method');
% %%

% using built-in function
% 
% I = imread('cameraman.tif');
% figure;imshow(I);title("Original Image")
% 
% % Find edges using the Canny method.
% BW1 = edge(I,'Canny');
% 
% % Find edges using the Prewitt method.
% BW2 = edge(I,'Prewitt');
% 
% % Find edges using the Sobel method.
% BW3 = edge(I,'Sobel');
% 
% % Find edges using the Robert's method.
% BW4 = edge(I,'Roberts');
% 
% figure;
% subplot(2,2,1);imshow(BW1);title('Canny method');
% subplot(2,2,2);imshow(BW2);title('Prewitt method');
% subplot(2,2,3);imshow(BW3);title('Sobel method');
% subplot(2,2,4);imshow(BW4);title("Robert's method");
%%
    % Noise removal using Spatial Filtering methods
    img = imread("./frames/186.jpg");
    I = rgb2gray(img);
    
    % add noise to the image
    J = imnoise(I,'salt & pepper',0.1);
    K = wiener2(J,[5 5]);
    
    figure;
    imshowpair(J,K,'montage');title('Noise image');
    
    % filtering method
    img1 = imgaussfilt(J,2); 
    img2 = medfilt2(J,[6 6]);
    
    figure;
    subplot(2,2,1);imshow(img);title("Original Image");
    subplot(2,2,2);imshow(J);title("Noisy Image");
    subplot(2,2,3);imshow(img1);title("Smoothed image, \sigma = 2");
    subplot(2,2,4);imshow(img2);title("Meadian filtered image");
%%
img = imread("./frames/186.jpg");