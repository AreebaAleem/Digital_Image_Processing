img1 = imread('C:\Users\Dell XPS White\Desktop\MATLAB\Digital_Image_Processing\todo_class4\img1.jpg');
img2 = imread('C:\Users\Dell XPS White\Desktop\MATLAB\Digital_Image_Processing\todo_class4\img2.jpg');
[inputpoint, refpoint] = cpselect(img1, img2, 'Wait', true);
tranfmatrix = cp2tform(inputpoint, refpoint, 'affine');
transformedImage = imtransform(img2,tranfmatrix);
imshow(transformedImage);