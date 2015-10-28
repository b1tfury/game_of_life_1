module GameOfLife
  class Display
    def initialize(points = nil)
      @points = points
    end
    def limits
      if @points == nil
        raise "Nothing was passed to display"
      end
    end
  end
end