require_relative "spec_helper"

describe IdealRocket do

  subject { IdealRocket.new }

  describe "#delta_v_describer" do
    it "should print inputs and output for equation" do
      description = "The change in velocity (delta v) for a body that has inital mass of 5kg, final mass of 1kg, and effective exhaust velocity of 10m/s is 16.094379124341003"
      subject.delta_v_describer(5, 1, 10).should == description
    end
  end

  describe "#delta_v" do

    it "should print description using real numbers" do
    	# 	Assume an exhaust velocity of 4,500 meters per second (15,000 ft/s) and a  
# 	of 9,700 meters per second (32,000 ft/s) (Earth to LEO).
# Single stage to orbit rocket:  = 0.884, therefore 88.4% of the initial total mass has to be propellant. T
# he remaining 11.6% is for 
# the engines, the tank, and the payload. In the case of a space shuttle, it would also include the orbiter.

		# 4500 meters per second
		starting_weight = 1000 # value from wikipedia example, see above
		final_weight = 116 # value from wikipedia example, see above
		expected_velocity_change = 9700 # meters per second - value from wikipedia example, see above
		subject.delta_v(1000,116, 4500).should be_within(500).of(expected_velocity_change) # why do I get such a different answer? Inaccurate wikipedia data, or bad code?
    end
  end
end