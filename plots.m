img1 = double(rgb2gray(imread('C:\Users\Dell XPS White\Desktop\MATLAB\Digital_Image_Processing\color.jpg')));
[R, C] = size(img1);
img2 = zeros(R,C);
for i=1:1:R
    for j=1:1:C
%         img2(i,j) = img1(i,j)/2;
%         img2(i,j) = img1(i,j)*2;
%         img2(i,j) = img1(i,j)+30;
%         img2(i,j) = img1(i,j)-30;
%         img2(i,j) = 2*(img1(i,j))+10;
%         img2(i,j) = img1(i,j)*1;
%         img2(i,j) = 255-img1(i,j);
        img2(i,j) = img1(i,j)-255;
    end
end
figure;
imshow(img2,[]);

r = 0:255;
% s = r/2;
% s = r*2;
% s = r+30;
% s = r-30;
% s = 2*r+10;
% s = 1*r;
% s = 255 - r;
s = r - 255;
figure;
plot(r,s);
title('Plot');
xlabel('Input(s)');
ylabel('Output(r)');