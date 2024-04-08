% Function applying high boost filtering to an image
function mySecondAssignment(filename, multifact)

% Reading the image and converting it to grayscale
img1 = imread(filename);
img2 = double(rgb2gray(img1));
[R,C] = size(img2);
    
% Initializing the filtered image and masked image
img3 = zeros(R,C);
img4 = zeros(R,C);

% Applying averaging filter to get smoothed image
for i=2:1:R-1
    for j=2:1:C-1
        temp=img1(i-1:i+1,j-1:j+1);
        temp2=reshape(temp,1,[]);
        mysum=sum(temp2);
        myvalue=mysum/9;
        img3(i,j)=myvalue;
    end
end
    
% Calculating the mask by subtracting smoothed image from original
img4 = img2-img3;
    
% Applying high boost filtering by adding mask scaled by multiplicative factor in original image
highboost = img2+multifact*img4;
    
% Displaying the rgb image, grayscale image, mask and high boost image
figure,imshow(uint8(img1),[]),title('RGB Image');
figure,imshow(uint8(img2),[]),title('Gray Scale Image');
figure,imshow(img4,[]),title('Mask');
figure,imshow(uint8(highboost),[]),title('High Boost Image');
    
% Saving the original and high boost images to the current directory
imwrite(uint8(img2),'original_image.jpeg');
imwrite(uint8(highboost),'highboost_masked_image.bmp');