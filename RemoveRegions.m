function [imageWithoutBigAndSmallRegions] = RemoveRegions(binImage)

imageWithoutSmallRegions = RemoveSmallRegions(binImage, 1000);
imageWithoutBigAndSmallRegions = RemoveBigRegions(imageWithoutSmallRegions, 500000);
%figure, imshow(imageWithoutBigAndSmallRegions);
%title('After Removal of small & big Regions');

end

