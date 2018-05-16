function newObjPos = convertNormPosFromFig2Subplot(objPos, sPos)

% pos: [x y w h]

newObjPos = [0 0 0 0];

% x
newObjPos(1) = sPos(1) + objPos(1) * sPos(3);

% y
newObjPos(2) = sPos(2) + objPos(2) * sPos(4);

% w/h
newObjPos(3:4) = objPos(3:4) .* sPos(3:4);

end