image = imread('xyz.png');        %import image into matlab
image_of_doubles = double(image); %convert to array of doubles

num_bins = 20;
figure;
[n_elements, centers] = hist(image_of_doubles(:), num_bins);  %create histogram for visual representation of photo
bar(centers, n_elements);
xlim([0 255]);
title('Original Photo Pixels');
xlabel('Pixel #');
ylabel('# of Pixels');

figure;
imshow(image, 'InitialMagnification', 99);
title('Original Photo');

alpha = 3.3;
beta = -335;

new_img = alpha * (image_of_doubles) + beta;  % alter histogram bars to balance out pixels

figure;
[n_elements, centers] = hist(new_img(:), num_bins);
bar(centers, n_elements);
xlim([0 255]);
title('Altered Photo Pixels');
xlabel('Pixel #');
ylabel('# of Pixels');

y = uint8(new_img);
figure;
imshow(y, 'InitialMagnification', 99);
title('Altered Photo');
