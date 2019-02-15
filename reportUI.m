function ui = reportUI
% returns string of 'matlab' or 'octave'

coder.extrinsic('exist');

isoctave = exist('OCTAVE_VERSION', 'builtin');

if isoctave
  ui = 'octave';
else
  ui = 'matlab';
end

end
