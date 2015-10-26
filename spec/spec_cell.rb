require 'Cell'


describe Cell, "#is?" do
  it "should return a dead cell if cell state is not mentioned" do
    expect(Cell.new().is?).to eql("DEAD")
  end
  it "should return a alive cell if state is mentioned as Alive" do
    expect(Cell.new("ALIVE",1,2).is?).to eql("ALIVE")
  end
  it "should not give a dead cell if state mentioned is Alive" do
    expect(Cell.new("ALIVE",1,2).is?).not_to eql("DEAD")
  end
  it "should check that if cell is alive then location must be provided" do
    expect{ Cell.new("ALIVE").is? }.to raise_error(RuntimeError,"If state is alive then location must be provided")
  end
end

describe Cell, "#location" do
  it "should have default location nil" do
    expect(Cell.new().location).to eql(nil)
  end

  it "should return location of live cell" do
    expect(Cell.new("ALIVE",1 ,2).location).to eql([1,2])
  end
end

describe Cell, "#neighbours" do
  it "should give no neighbours if location of cell is nil" do
    expect(Cell.new("ALIVE",1,2).neighbours.sort).to eql([[0,1],[1,1],[2,1],[2,2],[2,3],[1,3],[0,3],[0,2]].sort)
  end
end
