function noDispBool = isNoDisplay()

%% isNoDisplay
% Purpose: returns true if matlab running in headless/CLI mode

noDispBool = ~feature('ShowFigureWindows');

end