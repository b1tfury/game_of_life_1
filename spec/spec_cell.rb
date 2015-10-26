require 'cell'


describe Cell do
  it "should return a dead cell if cell state is not mentioned" do
    expect(Cell.new().is?).to eql  "DEAD"
  end
  it "should return a alive cell if state is mentioned as Alive" do
    expect(Cell.new("ALIVE").is?).to eql "ALIVE"
  end
  it "should have default location nil" do
    expect(Cell.new().location).to eql nil
  end
  it "should return location of live cell" do
    expect(Cell.new("ALIVE",1 ,2).location).to eql [1,1]
  end
end
