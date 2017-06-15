classdef builtinHandleClass < handle
  %arrayh - numeric array passed by reference
  
  properties
    data
  end
  
  methods
    function obj = builtinHandleClass(data)
      obj.data = data;
    end
    
    %% Overload builtin functions
    function varargout = subsref(varargin)
      obj = varargin{1};
      S = varargin{2};
      
      if length(S) == 1
        switch S.type
          case '.'
            if nargout
              [varargout{1:nargout}] = builtin('subsref',varargin{:});
            else
              builtin('subsref',varargin{:});
            end
          otherwise
            if nargout
              [varargout{1:nargout}] = builtin('subsref',obj.data,varargin{2:end});
            else
              builtin('subsref',obj.data,varargin{2:end});
            end
        end
      end
    end
    
    function disp(obj, varargin)
      disp(obj.data, varargin{:});
    end
    
    function out = length(obj, varargin)
      out = length(obj.data, varargin{:});
    end
    
    function out = numel(obj, varargin)
      out = numel(obj.data, varargin{:});
    end

    function out = num2str(obj, varargin)
      out = num2str(obj.data, varargin{:});
    end
    
    function out = size(obj, varargin)
      out = size(obj.data, varargin{:});
    end
  end
  
end