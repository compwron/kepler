require_relative "spec_helper"

describe IdealRocket do

  subject { IdealRocket.new }

  describe "#delta_v_describer" do
    it "should print inputs and output for equation" do
      description = "The change in velocity (delta v) for a body that has inital mass of 5kg, final mass of 1kg, and effective exhaust velocity of 10kg/s is 16.094379124341003"
      subject.delta_v_describer(5, 1, 10).should == description
    end
  end
end