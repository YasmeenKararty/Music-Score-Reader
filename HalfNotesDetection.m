function [halfNote] = HalfNotesDetection(image, wholeNote, size)

halfNote = image - wholeNote;
halfNote = RemoveSmallRegions(halfNote, size);
%figure, imshow(halfNote);
%title('Half Note Image');

end

