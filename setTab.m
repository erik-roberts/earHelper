function setTab(numSpaces)
% setTab - set tab to numSpaces

assert(isscalar(numSpaces));

com.mathworks.services.Prefs.setIntegerPref('EditorSpacesPerTab', numSpaces);
com.mathworks.services.Prefs.setIntegerPref('EditorSpacesPerIndent', numSpaces);

if com.mathworks.services.Prefs.getIntegerPref('EditorSpacesPerTab') ~= numSpaces...
    || com.mathworks.services.Prefs.getIntegerPref('EditorSpacesPerIndent') ~= numSpaces
  warning('setTab failed');
end

end
