classdef cellh < builtinHandleClass & handle
  %cellh - cell array passed by reference
  
  methods
    function obj = cellh(data)
      try
        assert(iscell(data))
      catch
        error('Argin must be cell')
      end
      
      obj@builtinHandleClass(data)
    end
  end
  
  %% Overload builtin methods
  methods
    function out = aa2nt(obj, varargin)
      out = aa2nt(obj.data, varargin{:});
    end

    function out = accumarray(obj, varargin)
      out = accumarray(obj.data, varargin{:});
    end

    function out = cell2struct(obj, varargin)
      out = cell2struct(obj.data, varargin{:});
    end

    function out = cellismemberlegacy(obj, varargin)
      out = cellismemberlegacy(obj.data, varargin{:});
    end

    function out = ctranspose(obj, varargin)
      out = ctranspose(obj.data, varargin{:});
    end

    function out = dna2rna(obj, varargin)
      out = dna2rna(obj.data, varargin{:});
    end

    function out = intersect(obj, varargin)
      out = intersect(obj.data, varargin{:});
    end

    function out = ismember(obj, varargin)
      out = ismember(obj.data, varargin{:});
    end

    function out = issorted(obj, varargin)
      out = issorted(obj.data, varargin{:});
    end

    function out = nt2aa(obj, varargin)
      out = nt2aa(obj.data, varargin{:});
    end

    function out = nwalign(obj, varargin)
      out = nwalign(obj.data, varargin{:});
    end

    function out = permute(obj, varargin)
      out = permute(obj.data, varargin{:});
    end

    function out = reshape(obj, varargin)
      out = reshape(obj.data, varargin{:});
    end

    function out = rna2dna(obj, varargin)
      out = rna2dna(obj.data, varargin{:});
    end

    function out = seq2regexp(obj, varargin)
      out = seq2regexp(obj.data, varargin{:});
    end

    function out = setdiff(obj, varargin)
      out = setdiff(obj.data, varargin{:});
    end

    function out = setxor(obj, varargin)
      out = setxor(obj.data, varargin{:});
    end

    function out = sort(obj, varargin)
      out = sort(obj.data, varargin{:});
    end

    function out = strcat(obj, varargin)
      out = strcat(obj.data, varargin{:});
    end

    function out = strmatch(obj, varargin)
      out = strmatch(obj.data, varargin{:});
    end

    function out = transpose(obj, varargin)
      out = transpose(obj.data, varargin{:});
    end

    function out = union(obj, varargin)
      out = union(obj.data, varargin{:});
    end

    function out = unique(obj, varargin)
      out = unique(obj.data, varargin{:});
    end

  end
  
end