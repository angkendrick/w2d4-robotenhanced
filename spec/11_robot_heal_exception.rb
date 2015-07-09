require './spec_helper'

describe Robot do
  before :each do
    @robot = Robot.new()
  end


  describe "#heal!" do
    it "should raise a RunTimeError when #heal! is used on a dead robot" do
      @robot.wound(100)
      expect{@robot.heal!(100)}.to raise_error
    end

  end


end
