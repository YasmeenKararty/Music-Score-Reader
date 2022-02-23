function [ imageWithBigRegionsRemoved ] = RemoveSmallRegions(image, lowerLimit )
% This function will remove the regions whose areas are too small

imageLabel = bwlabel(image);
shapeProps = regionprops(imageLabel, 'Area');

for nRegion = 1 : length(shapeProps)
    index = imageLabel == nRegion;
    area = shapeProps(nRegion).Area;
    if area < lowerLimit
        image(index) = 0;
    end
end % nRegion

imageWithBigRegionsRemoved = image;

end

