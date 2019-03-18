function varargout = figplot(varargin)
% plot in new figure

figure;

if nargout
varargout = plot( varargin{:} );
else
  plot( varargin{:} );
end

end