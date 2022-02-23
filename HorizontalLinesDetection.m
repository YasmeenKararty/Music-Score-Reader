function [HorizontalLines] = HorizontalLinesDetection(imageWithoutBigAndSmallRegions)

SE = strel('line', 15, 0);
HorizontalLines = imopen(imageWithoutBigAndSmallRegions, SE);
HorizontalLines = imclose(HorizontalLines, SE);
%figure, imshow(HorizontalLines);
%title('Extracted Horizontal Lines');

end

