clc;
clear;
close all;

pkg load image

% Read and display image properties
img = imread('input_image.png');

figure;
imshow(img);
title('Original Image');

disp('Image Size (Rows, Columns, Channels):');
disp(size(img));

disp('Image Data Type:');
disp(class(img));

% Extract RGB channels
Rimg = img(:,:,1);
Gimg = img(:,:,2);
Bimg = img(:,:,3);

% Display RGB channels
figure;

subplot(2,2,1);
imshow(img);
title('Original Image');

subplot(2,2,2);
imshow(Rimg);
title('Red Channel');

subplot(2,2,3);
imshow(Gimg);
title('Green Channel');

subplot(2,2,4);
imshow(Bimg);
title('Blue Channel');

% Image transformation - Cropping
crop_img = imcrop(img);

figure;
imshow(crop_img);
title('Cropped Image');

% Image transformation - Horizontal flipping
flip_img = fliplr(img);

figure;
imshow(flip_img);
title('Horizontally Flipped Image');

% Image transformation - Vertical flipping
flip_img2 = flipud(img);

figure;
imshow(flip_img2);
title('Vertically Flipped Image');

% Convert image to grayscale
gray = rgb2gray(img);

figure;
imshow(gray);
title('Grayscale Image');

% Brightness enhancement
bright = gray + 50;

figure;
imshow(bright);
title('Brightness Increased');

% Save brightness-enhanced image
imwrite(bright, 'bright_output.png');

disp('Brightness-enhanced image saved as bright_output.png');
