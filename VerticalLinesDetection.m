function [imageWithoutVerticalLines] = VerticalLinesDetection(filledNotes)
% Remove the vertical lines

SE = strel('line', 13, 90);
verticalLines = imopen(filledNotes, SE);
%figure, imshow(verticalLines);
%title('Extracted Vertical Image');

imageWithoutVerticalLines = filledNotes - verticalLines;
%figure; imshow(imageWithoutVerticalLines);
%title('Image Without Vertical Lines');

end

