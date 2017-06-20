function suffix = getNumSuffix(str)
  suffix = regexp(str, '\D(\d*)$', 'tokens');
  suffix = suffix{1}{1};
end