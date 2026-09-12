clc;
clear;
close all;

pkg load image

% Read the book cover image
img = imread('Book_Cover.png');

% Display original image
figure;
imshow(img);
title('Original Image');

% Extract RGB channels
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);

% Display RGB channels
figure;

subplot(2,2,1);
imshow(R);
title('Red Channel');

subplot(2,2,2);
imshow(G);
title('Green Channel');

subplot(2,2,3);
imshow(B);
title('Blue Channel');

subplot(2,2,4);
imshow(img);
title('Original Image');

% Convert to grayscale
gray = rgb2gray(img);

figure;
imshow(gray);
title('Gray Scale');

% Create negative image
negative = 255 - gray;

figure;
imshow(negative);
title('Negative Image');

% Brightness enhancement
bright = 50 + gray;

figure;
imshow(bright);
title('Brightness Enhancement Image');

% Display all processed images together
figure;

subplot(2,3,1);
imshow(R);
title('Red Channel');

subplot(2,3,2);
imshow(G);
title('Green Channel');

subplot(2,3,3);
imshow(B);
title('Blue Channel');

subplot(2,3,4);
imshow(gray);
title('Gray Image');

subplot(2,3,5);
imshow(negative);
title('Negative Image');

subplot(2,3,6);
imshow(bright);
title('Brightness Enhancement');

% Save brightness-enhanced image
imwrite(bright, 'Book_Output.png');

disp('Saved Successfully as Book_Output.png');
