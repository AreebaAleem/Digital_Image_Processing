img1 = double(rgb2gray(imread('C:\Users\Dell XPS White\Desktop\MATLAB\Digital_Image_Processing\todo_class2\color.jpg')));
[R, C] = size(img1);
img2 = zeros(R,C);
for i=1:1:R
    for j=1:1:C
        img2(i,j) = 255 - img1(i,j);
    end
end
figure;
imshow(img2,[]);

r = 0:255;
s = 255-r;
figure;
plot(r,s);
title('Plot');
xlabel('Input(s)');
ylabel('Output(r)');