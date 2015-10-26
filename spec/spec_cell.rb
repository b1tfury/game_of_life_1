require 'cell'


describe Cell do
  it "should return a dead cell if cell state is not mentioned" do
    Cell.new() == "DEAD"
  end
  it "should return a alive cell if state is mentioned as Alive" do
    Cell.new("ALIVE") == "ALIVE"
  end
end
