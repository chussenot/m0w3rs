module Point
  # Allows an object to be positioned on a plane.
  module InstanceMethods
    attr_accessor :x, :y

    def to_array
      [x, y]
    end

    alias to_a to_array
  end
end
