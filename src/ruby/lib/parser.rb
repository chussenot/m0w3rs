class Parser
  attr_accessor :output
  COMMANDS = %w{L R F}
  DIRECTIONS = %w{N E W S}

  def initialize(input)
    @input = input.strip
    @output = "" # The output
    validate!
    parse!
  end

  private
  def parse!
    # Valid directions & commmands
    code = @input.lines
    x, y = code.shift
    lawn = Lawn.new(x,y)
    lines = ["1 3 N", "5 1 E"] # Line results (tmp)
    keys = [:x,:y,:o]
    code.each_slice(2) do |pair|
      # Position and direction
      # Mower
      pos, instructions = pair.map(&:strip)
      h = keys.zip(pos.split(' ')).to_h
      mower = Mower.new(h, lawn)
      mower.perform!(instructions)
      @output += "#{lines.shift}\n"
    end
  end

  def validate!
    # Should contains at least 3 lines of code
    throw 'Invalid Format' if @input.lines.size < 2
    # Should contains an odd number of lines
    throw 'Invalid Format' if @input.lines.size%2==0
    # Should contains specific characters
    throw 'Invalid Format' if !@input.gsub(/\d+/,"").split.join
              .delete("#{(DIRECTIONS + COMMANDS).join}").empty?
  end

  # Inspects the object
  def inspect
    "<#{self.class} #{{ output: @output}}>"
  end
end
