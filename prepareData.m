function [ data ] = prepareData( imgs, categories, wordTable )

numCategories = size(wordTable, 2);
numImages     = size(imgs, 2);

data.imgs = imgs;
data.categories = categories;
data.wordTable = wordTable;

% [ [ w_i repeated m times for each image ] for all k categories ]
data.p1 = wordTable(:, reshape(repmat(1:numCategories, numImages, 1), 1, []));

% prepare list of 'good' indices
data.goodIndices = (categories-1) * numImages + (1:numImages);

end
