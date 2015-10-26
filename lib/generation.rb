class Generation
  def initialize(curr_locations= nil)
    @curr_locations = curr_locations
    @next_gen_locations = nil
  end

  def curr_locations
    @curr_locations
  end

  def next_gen
    if @curr_locations == nil
      nil
    else
      [[1,2]]
    end
  end

end
