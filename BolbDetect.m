function [Num,xL,yT,xR,yB,Extent,Area,Centroids] = BolbDetect(VBolb)
sBolb = regionprops(VBolb,'BoundingBox', 'Centroid','FilledArea','Extent');
Centroids = cat(1, sBolb.Centroid);
Rects = cat (1, sBolb.BoundingBox);
Area = cat(1, sBolb.FilledArea);
Extent = cat(1, sBolb.Extent);
Num = size(Rects, 1);
xL = zeros(Num,1);
%     xR = zero(Num);
yT = zeros(Num,1);
W = zeros(Num,1);
H = zeros(Num,1);
xR = zeros(Num,1);
yB = zeros(Num,1);
%     yB = zero(Num);
for i = 1:Num
        xL(i) = round(Rects(i,1));
        yT(i) = round(Rects(i,2));
        W(i) = round(Rects(i,3));
        H(i) = round(Rects(i,4));
        xR(i) = round(xL(i) + W(i));
        yB(i) = round(yT(i) + H(i));
end
end

