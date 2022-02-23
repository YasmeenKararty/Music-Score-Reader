function [binImage] = ImageBinarization(image)

% Convert Grayscale image to Binary image and convert B&W

Image = rgb2gray(image);
binImage = ~imbinarize(Image);
%figure, imshow(binImage);
%title('Binarized Image');

end

