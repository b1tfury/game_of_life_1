require "spec_helper"

module GameOfLife

  describe Generation,"#curr_generation" do
    live_cells = [[1,2],[2,3],[1,1]]
    it "empty generation should give nil locations " do
      expect(Generation.new().curr_locations).to eq(nil)
    end
    it "should return  location of all live cells" do
      expect(Generation.new(live_cells).curr_locations).to match_array(live_cells)
    end
    it "should not return location of cells other then live cells " do
      expect(Generation.new(live_cells).curr_locations).not_to match_array([[1,2],[2,2],[1,1]])
    end

  end

  describe Generation,"#next_gen" do
    live_cells = [[1,2],[2,3],[1,1]]
    it "should return nil if current generation is nil" do
      gen = Generation.new
      expect(gen.next_gen).to eq(nil)
    end
    it "should return next generation cells locations if curr generation cells are not nil" do
      gen = Generation.new(live_cells)
      expect(gen.next_gen).to match_array([[1,2],[2,2]])
    end
    it "should return next generation cells locations if curr generation cells are not nil" do
      live_cells = [[2,2],[1,1],[3,2]]
      gen = Generation.new(live_cells)
      expect(gen.next_gen).to match_array([[2,1],[2,2]])
    end


  end

end