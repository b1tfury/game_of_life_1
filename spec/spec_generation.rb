require "Generation"

describe Generation do
  it "emoty generation should give nil locations " do
    expect(Generation.new().curr_locations).to eq(nil)
  end
end
