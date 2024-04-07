img = zeros(200,200);
Cx = 100;
Cy = 100;
myRad = 50;
for i=1:1:200
    for j=1:1:200
        if max(abs(Cx-i),abs(Cy-j)) <= myRad
            img(i,j) = 255;
        end
    end
end
imshow(img,[]);