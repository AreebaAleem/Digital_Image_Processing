img1 = double(rgb2gray(imread('C:\Users\Dell XPS White\Desktop\MATLAB\Digital_Image_Processing\todo_class3\color.jpg')));
[R, C] = size(img1);
img2 = zeros(R,C);
for i=2:1:R-1
for j=2:1:C-1
temp=img1(i-1:i+1,j-1:j+1);
temp2=reshape(temp,1,[]);
mysum=sum(temp2);
myvalue=mysum/9;
img2(i,j)=myvalue;
end
end
imshow(img2,[]);