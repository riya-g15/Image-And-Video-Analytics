clc;
close all;
im=imread('cat.jpg');
wname='haar';
no_levels=1;
% Wavelet 2 function is for 2D wavelet analysis
% C contains decomposion vector which has A(N), H(N), V(N), D(N) ie
% approximation, horizontal, vertical, diagonal co-efficients
% S is for Book keeping vector
[C, S]=wavedec2(im2double(im),no_levels,wname);
% appcoef2 computes the approximation coefficients at level 2 using
% decomposion structure [C S]
A1=appcoef2(C,S,wname,1);
% detcoef2 computes the horizontal, vertical, diagonal  coefficients at level 2 using
% decomposion structure [C S]
[H1, V1, D1 ] = detcoef2('all', C, S, 1);
% Extract the coefficients from level 21
%[H1, V1, D1 ] = detcoef2('all', C, S, 2);
% Display the images
im1 = [A1 H1; V1,D1]
imshow(im1);
