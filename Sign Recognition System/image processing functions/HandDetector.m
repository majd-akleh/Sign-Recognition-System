function [ handImage , bounds ] = HandDetector( grayImage )


binaryImage = im2bw(grayImage,graythresh(grayImage));

labeledImage = bwlabel(binaryImage);

measurements = regionprops(labeledImage, 'BoundingBox', 'Area');

allAreas = [measurements.Area];

[~, sortingIndexes] = sort(allAreas, 'descend');

handIndex = sortingIndexes(1); 

handImage = ismember(labeledImage, handIndex);

handImage = handImage > 0;

handImage = imfill(handImage,'holes');

bounds = measurements(handIndex).BoundingBox;

handImage = imcrop(handImage, bounds);


end