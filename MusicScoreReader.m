% Read image

NotesExtraction

[L, num] = bwlabel(notesExtractedImage);
% figure, imshow(label2rgb(L));
% title('Colored Objects');

stats = regionprops(L, 'BoundingBox');
pos = zeros(length(stats), 4);


lineStats = regionprops(horizontalLines,'BoundingBox');
linePos = zeros(length(lineStats), 4);

for i = 1: length(lineStats)
    for j = 1: 4
        linePos(i, j) = lineStats(i).BoundingBox(j);
    end
end

[half, Hnum] = bwlabel(halfNotes);
% figure, imshow(label2rgb(L));
% title('Colored Objects');

halfStats = regionprops(half, 'BoundingBox');
halfPos = zeros(length(halfStats), 4);

for i = 1: length(halfStats)
    for j = 1: 4
        halfPos(i, j) = halfStats(i).BoundingBox(j);
    end
end


[whole, Wnum] = bwlabel(wholeNotes);
% figure, imshow(label2rgb(L));
% title('Colored Objects');

wholeStats = regionprops(whole, 'BoundingBox');
wholePos = zeros(length(wholeStats), 4);

for i = 1: length(wholeStats)
    for j = 1: 4
        wholePos(i, j) = wholeStats(i).BoundingBox(j);
    end
end

j = 1;
letters = [];
types = [];
noteBoundingBox = [];
for i = 1 : length(linePos) / 5
    [letters,types, noteBoundingBox]= BuildNotations(j, stats, linePos, letters, halfPos, wholePos, types, noteBoundingBox);
    j = j + 5 ;
end

%fprintf('letters: %c\n', letters);
%fprintf('types: %c\n', types);

melody = {};
for i = 1: length(letters)
    melody = [melody, letters(i)];
end

RGB = insertObjectAnnotation(double(~binImage), 'rectangle', noteBoundingBox, melody,...
    'TextBoxOpacity', 0.8, 'FontSize', 14);
figure, imshow(RGB);
title('Annotated Image');

%MusicGeneration(melody, types);
