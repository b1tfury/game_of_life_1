require 'spec_helper'

module GameOfLife
  describe Display, "#limits" do
    it "should raise an error if nothing is passed to display" do
      expect{Display.new.limits}.to raise_error(RuntimeError, "Nothing was passed to display")
    end
  end
end