require "Generation"

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
