function [imageWithoutTrebleCleff, temp] = FillNotes(imageWithoutBigAndSmallRegions, Hlines)

notes = imageWithoutBigAndSmallRegions - Hlines;
%figure, imshow(notes);
%title('Image Without Horizontal Lines');

SE = strel('square', 3);
filledNotes = imclose(notes, SE);
%figure, imshow(filledNotes);
%title('Filled Notes');

temp = RemoveBigRegions(filledNotes, 50);
%figure, imshow(temp);
%title('Temp'); 

imageWithoutTrebleCleff = RemoveBigRegions(filledNotes, 200);
%figure, imshow(imageWithoutTrebleCleff);
%title('Image Without Treble Cleff');

end

