class Position
  include Point::InstanceMethods
  def initialize(options={x: 0, y: 0})
    @x = Integer(options[:x])
    @y = Integer(options[:y])
  end

  def change(direction)
    case direction
    when 'N'
      self.class.new(x: x, y: y + 1)
    when 'W'
      self.class.new(x: x - 1, y: y)
    when 'S'
      self.class.new(x: x, y: y - 1)
    when 'E'
      self.class.new(x: x + 1, y: y)
    end
  end

  # @return [Hash] Converts options object to an options hash. All keys
  #   will be symbolized.
  def to_hash
    { x: x, y: y }
  end

  alias to_h to_hash

  # Inspects the object
  def inspect
    "<#{self.class} #{{ x: @x, y: @y }}>"
  end
end
