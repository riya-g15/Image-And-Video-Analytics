img=imread('cat.jpg');
gimg=rgb2gray(img);
subplot(331)
imshow(gimg)
title('f(x,y)')
%% Ideal high pass
P=size(gimg);
M=P(1);N=P(2);
F=fft2(gimg,M,N);
subplot(332)
%imshow(uint8(abs(fftshift(F))));
imshow(uint8(abs(F)));
title('F(u,v)')
u0=20; %remove freq greater than u0
u=0:(M-1);
v=0:(N-1);
idx=find(u>M/2);
u(idx)=u(idx)-M;
idy=find(v>N/2);
v(idy)=v(idy)-N;
[V,U]=meshgrid(v,u);
D=sqrt(U.^2+V.^2);
H=1-double(D<=u0);
% display
subplot(333)
imshow(abs(fftshift(H)),[]);
title('H(u,v) IHPF')
subplot(334)
G=H.*F;
g=(ifft2(G));
imshow(histeq(uint8(g)),[])
title('IHPF (Ringing problem)')
%% Butterworth high pass
n=1; %Butterworth filter of order n
H=1-(1./(1 + (D./u0).^(2*n)));
subplot(335)
imshow(abs(fftshift(H)));
title('H(u,v) BHPF')
subplot(336)
G=H.*F;
g=(ifft2(G));
imshow(histeq(uint8(g)),[])
title('BHPF')
%% Gaussian high pass filter
H =1- (exp(-(D.^2)./(2*(u0^2))));
subplot(337)
imshow(abs(fftshift(H)));
title('H(u,v) GHPF')
subplot(338)
G=H.*F;
g=(ifft2(G));
imshow(histeq(uint8(g)),[])
title('GHPF')