close all;
clear all;
image1 = imread();
imageSize = [128,128];
% image1 = readimage(imdsTrain,1);  
scaleImage1 = imresize(image1,imageSize); 
[image2,V] = RedSegbolb(image1);
scaleImage2 = imresize(V,imageSize);  

%
% [features1, visualization1] = extractHOGFeatures(scaleImage1,'CellSize',[32 32],'BlockOverlap',[0 0]);
% [features2, visualization2] = extractHOGFeatures(scaleImage2,'CellSize',[32 32],'BlockOverlap',[0 0]);  
[features1, visualization1] = extractHOGFeatures(scaleImage1,'CellSize',[32 32]);
[features2, visualization2] = extractHOGFeatures(scaleImage2,'CellSize',[32 32]);
%
% figure,imshow(scaleImage1);hold on; plot(visualization1)  
% figure,imshow(scaleImage2);hold on; plot(visualization2)  
figure,imshow(V);  
figure,imshow(scaleImage2); 