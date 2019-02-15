function keyboardControlFig(figH, zoomFactor)
%% keyboardControlFig
% Purpose: control figure scrolling and zooming with arrow keys and =/- keys

zoomFactor = setDefault('zoomFactor', 2);
% figH.UserData.zoomFactor = zoomFactor;

set(figH,'KeyPressFcn', @key_pressed_fcn);

  function key_pressed_fcn(obj, evnt)
    
    % get gca limits
    xLims = xlim;
    yLims = ylim;
    
    % get current mouse position
    mousePoint = get(gca,'CurrentPoint');
    mousePoint = mousePoint(1,1:2);
    
    % check if mouse in axis
    inAxes = ...
      xLims(1)<=mousePoint(1) && mousePoint(1)<=xLims(2) &&  ...
      yLims(1)<=mousePoint(2) && mousePoint(2)<=yLims(2);
    
%     if strcmpi(evnt.Key, 'rightarrow')
%       if inAxes
%         Xlimit = xLims - [mousePoint(1)-xLims(1) (mousePoint(1)-xLims(2))] /5;
%       else
%         Xlimit = (xLims - [diff(xLims) -diff(xLims)] /5);
%       end
%       xlim(Xlimit);
%     elseif strcmpi(evnt.Key, 'leftarrow')
%       if inAxes
%         Xlimit = xLims + [mousePoint(1)-xLims(1) (mousePoint(1)-xLims(2))] /5;
%       else
%         Xlimit = (xLims + [diff(xLims) -diff(xLims)] /5);
%       end
%       xlim(Xlimit);
%     elseif strcmpi(evnt.Key, 'uparrow')
%       if inAxes
%         Ylimit = yLims + [mousePoint(2)-yLims(1) (mousePoint(2)-yLims(2))] /5;
%       else
%         Ylimit = (yLims + [diff(yLims) -diff(yLims)] /5);
%       end
%       ylim(Ylimit);
%     elseif strcmpi(evnt.Key, 'downarrow')
%       if inAxes
%         Ylimit = yLims - [mousePoint(2)-yLims(1) (mousePoint(2)-yLims(2))] /5;
%       else
%         Ylimit = (yLims - [diff(yLims) -diff(yLims)] /5);
%       end
%       ylim(Ylimit);
%     elseif strcmpi(evnt.Key, 'add') || strcmpi(evnt.Key, 'equal')
%       zoom(zoomFactor);
%     elseif strcmpi(evnt.Key, 'subtract') || strcmpi(evnt.Key, 'hyphen')
%       zoom(1/zoomFactor);
%       % else
%       %   keyboard
%     end
    
  end

end