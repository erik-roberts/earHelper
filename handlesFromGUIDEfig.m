function handles = handlesFromGUIDEfig(mainWindowH)

handles = getappdata(mainWindowH, 'UsedByGUIData_m');

end