class Mower
  def initialize(options={x: 0, y: 0, o: 'N'}, lawn)
    @position  = Position.new(options)
    @direction = nil
  end

  def perform!(instructions)
  end

  # Inspects the object
  def inspect
    "<#{self.class}>"
  end
end
