close all; clear all; clc;

photoName = 'TwinkleTwinkleLittleStar.bmp';
image = imread(photoName);

binImage = ImageBinarization(image);

imageWithoutBigAndSmallRegions = RemoveRegions(binImage);

horizontalLines = HorizontalLinesDetection(imageWithoutBigAndSmallRegions);

[filledNotes] = FillNotes(imageWithoutBigAndSmallRegions, horizontalLines);

imageWithoutVerticalLines = VerticalLinesDetection(filledNotes);

if(strcmp(photoName, 'JingleBells.bmp'))
    [imageWithoutSmallNoise,imageWithoutBaseCleff] = ImageEnhancement(filledNotes, imageWithoutVerticalLines, 50, 35);
    enhancedImage = imageWithoutSmallNoise - imageWithoutBaseCleff;
    %figure, imshow(enhancedImage);
    %title('Enhanced Image');
    
    wholeNotes = WholeNotesDetection(enhancedImage, 3);
    
    halfNotes = HalfNotesDetection(enhancedImage, wholeNotes, 35);
  
    notesExtractedImage = halfNotes + wholeNotes;
    
elseif(strcmp(photoName, 'TwinkleTwinkleLittleStar.bmp'))
    enhancedImage = ImageEnhancement(filledNotes,imageWithoutVerticalLines, 51, 20);
    
    wholeNotes = WholeNotesDetection(enhancedImage, 2);
    
    halfNotes = HalfNotesDetection(enhancedImage, wholeNotes, 20);
    halfNotes = RemoveBigRegions(halfNotes, 50);
    
    notesExtractedImage = halfNotes + wholeNotes;
    %notesExtractedImage = RemoveSmallRegions(notesExtractedImage, 20);

elseif(strcmp(photoName, 'BachSheetMusic.bmp'))
    enhancedImage = ImageEnhancement(filledNotes,imageWithoutVerticalLines, 51, 3);
    wholeNotes = WholeNotesDetection(enhancedImage, 2);
    
    halfNotes = HalfNotesDetection(enhancedImage, wholeNotes, 3);
  
    notesExtractedImage = halfNotes + wholeNotes;
end


figure, imshow(notesExtractedImage);
title('Image With Extracted Notes');

