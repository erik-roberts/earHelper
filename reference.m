classdef reference < handle
  %reference - container class to hold reference to data
  
  properties
    data % data
  end
  
  properties (Dependent)
    x % alias to data
  end
  
  methods
    % Constructor
    function obj = reference(data)
      obj.data = data;
    end
    
    % Alias getter/setter
    function out = get.x(obj)
      out = obj.data;
    end
    
    function set.x(obj, value)
      obj.data = value;
    end
  end
  
end