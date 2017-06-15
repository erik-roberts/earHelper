classdef structh < builtinHandleClass & handle
  %structh - structure passed by reference
  
  methods
    function obj = structh(data)
      obj@builtinHandleClass(data)
    end
  end
  
  %% Overload builtin methods
  methods
    function out = amd(obj, varargin)
      out = amd(obj.data, varargin{:});
    end

    function out = ctranspose(obj, varargin)
      out = ctranspose(obj.data, varargin{:});
    end

    function out = fieldnames(obj, varargin)
      out = fieldnames(obj.data, varargin{:});
    end

    function out = fields(obj, varargin)
      out = fields(obj.data, varargin{:});
    end

    function out = ichol(obj, varargin)
      out = ichol(obj.data, varargin{:});
    end

    function out = ilu(obj, varargin)
      out = ilu(obj.data, varargin{:});
    end

    function out = linsolve(obj, varargin)
      out = linsolve(obj.data, varargin{:});
    end

    function out = manorm(obj, varargin)
      out = manorm(obj.data, varargin{:});
    end

    function out = permute(obj, varargin)
      out = permute(obj.data, varargin{:});
    end

    function out = reshape(obj, varargin)
      out = reshape(obj.data, varargin{:});
    end

    function out = struct2cell(obj, varargin)
      out = struct2cell(obj.data, varargin{:});
    end

    function out = transpose(obj, varargin)
      out = transpose(obj.data, varargin{:});
    end

  end
  
end