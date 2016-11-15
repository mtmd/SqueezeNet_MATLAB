function [preproc_img] = preproc(img_file, meanFile) 
CROPPED_DIM = 227;
img = imread(img_file);
if (size(img, 3) == 1)
    img1(:, :, 1) = img;
    img1(:, :, 2) = img;
    img1(:, :, 3) = img;
    img = img1;
end
img_mean = load(meanFile);
img = img(:, :, [3, 2, 1]); % Change channels from BGR to RGB
img = permute(img, [2, 1, 3]);
img = single(img);

name = fieldnames(img_mean);
datasetMean = img_mean.(name{1});
sz = size(datasetMean);
img = imresize(img, [sz(1) sz(2)], 'bilinear');
img = img - datasetMean;
img = imresize(img, [CROPPED_DIM CROPPED_DIM], 'bilinear');
preproc_img = zeros(CROPPED_DIM, CROPPED_DIM, 3, 'double');
preproc_img(:, :, :) = img;
end