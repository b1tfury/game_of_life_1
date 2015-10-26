class Cell
  DEAD = "DEAD"
  ALIVE = "ALIVE"
  def initialize(state = DEAD, locationX = nil,locationY = nil )
    @state = state
    @locationX = locationX
    @locationY = locationY
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
end
