function [imageWithoutSmallNoise, imageWithoutBaseCleff] = ImageEnhancement(filledNotes, imageWithoutVerticalLines, bigRegionSize, smallRegionSize)

imageWithoutBaseCleff = RemoveBigRegions(filledNotes, bigRegionSize);
%figure, imshow(imageWithoutBaseCleff);
%title('Image Without Base Cleff');

imageWithoutSmallNoise = RemoveSmallRegions(imageWithoutVerticalLines, smallRegionSize);
%figure, imshow(imageWithoutSmallNoise);
%title('Image Without Small Noise')

end

