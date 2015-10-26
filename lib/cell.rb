class Cell
  DEAD = "DEAD"
  ALIVE = "ALIVE"
  def initialize(state = DEAD, locationX = nil,locationY = nil )
    @state = state
    @locationX = locationX
    @locationY = locationY
    @neighbours = []
  end
  def is?
    if @state == ALIVE && (@locationX == nil || @locationY == nil)
      raise "If state is alive then location must be provided"
    else
      @state
    end
  end
  def location
    if @locationX == nil && @lcoationY == nil
      nil
    else
      return @locationX, @locationY
    end
  end

  def neighbours
    range  = Array.[](-1,0,1)
    range.each do |i|
      range.each do |j|
        if not (j == i && i ==0)
           @neighbours << [@locationX+i,@locationY+j]
        end
      end
    end
    @neighbours
  end

end
