function [wholeNote] = WholeNotesDetection(image, size)

SE = strel('disk', size);
wholeNote = imopen(image, SE);
%figure, imshow(wholeNote);
%title('Whole Note Image');

end

