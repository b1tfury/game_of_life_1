class Generation
  def initialize(curr_locations= nil)
    @curr_locations = curr_locations
    @next_gen_locations = []
    @neighbours = []
  end

  def curr_locations
    @curr_locations
  end

  def next_gen
    if @curr_locations == nil
      nil
    else
      @curr_locations.each do |loc |
        cell = Cell.new("ALIVE",loc[0],loc[1])
        tmp_neighbours = cell.neighbours
        @neighbours << tmp_neighbours
        count = 0
        tmp_neighbours.each do |tmp|
          if @curr_locations.include? tmp
            count += 1
          end
        end
        if count == 2 || count == 3
          @next_gen_locations << loc
        end
      end
      @neighbours = @neighbours.flatten.uniq

      @neighbours.each do |loc|
        cell = Cell.new("ALIVE",loc[0],loc[1])
        @neighbours << cell.neighbours
      end
      @neighbours = @neighbours.flatten.uniq

      @neighbours.each do |loc|
        if !@curr_locations.include? loc
        cell = Cell.new("ALIVE",loc[0],loc[1])
        tmp_neighbours = cell.neighbours
        count = 0
        tmp_neighbours.each do |tmp|
          if @curr_locations.include? tmp
            count += 1
          end
        end
        if  count == 3
          @next_gen_locations << loc
        end
        end
      end
      @next_gen_locations
    end
  end

end
