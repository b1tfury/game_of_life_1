class Cell
  DEAD = "DEAD"
  ALIVE = "ALIVE"
  def initialize(state =DEAD )
    @state = state
  end
  def is?
    @state
  end

end
