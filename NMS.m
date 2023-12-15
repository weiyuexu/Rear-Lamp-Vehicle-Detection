% boxes = [300,300;300,300;500,450;500, 450;0.6,0.4]    
clear;
boxes = [100,300,500,500,0.2 ;200,300, 450,450,0.4 ;300,300, 350,450,0.7 ;400,450, 500,600,0.8 ;250,300, 300,450,0.3 ;200,240, 240,360,0.5]    
threshold = 0.4;
if isempty(boxes)
      pick = [];
      return;
    end
    x1 = boxes(:,1);
    y1 = boxes(:,2);
    x2 = boxes(:,3);
    y2 = boxes(:,4);
    s = boxes(:,5);
    area = (x2-x1+1) .* (y2-y1+1);
    [vals, I] = sort(s);

    pick = s*0;
    counter = 1;

    
    while ~isempty(I)
        last = length(I);
        i = I(last);
        pick(counter) = i;
        counter = counter + 1;  

        xx1 = max(x1(i), x1(I(1:last-1)));
        yy1 = max(y1(i), y1(I(1:last-1)));
        xx2 = min(x2(i), x2(I(1:last-1)));
        yy2 = min(y2(i), y2(I(1:last-1)));  
        w = max(0.0, xx2-xx1+1);
        h = max(0.0, yy2-yy1+1); 
        inter = w.*h;

        


        I = I(find(o<=threshold));
    end
    pick = pick(1:(counter-1));

