%reading an image and converting to grayscale
im=rgb2gray(imread("GIRL_WOOD.jpg"));
imshow(im);

%Inputing value from the user
pixel= input("Enter the required pixel value: ");

%Counter variable = 0
freq=0;
[m,n]= size(im);
for i=1:m
    for j=1:n
        if(im(i,j)==pixel)
            freq=freq+1;
        end
    end
end

%Printing the required frequency
fprintf("The pixel value %d occurs %d times in the given image \n",pixel,freq)
