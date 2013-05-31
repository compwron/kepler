require_relative "spec_helper"

describe IdealRocket do

  subject { IdealRocket.new }

  describe "#delta_v_describer" do
    it "should print inputs and output for equation" do
      description = "The change in velocity (delta v) for a body that has inital mass of 5kg, final mass of 1kg, and effective exhaust velocity of 10kg/s is 16.094379124341003"
      subject.delta_v_describer(5, 1, 10).should == description
    end

    it "should print description using real numbers" do
    	# 	Assume an exhaust velocity of 4,500 meters per second (15,000 ft/s) and a  
# 	of 9,700 meters per second (32,000 ft/s) (Earth to LEO).

# Single stage to orbit rocket:  = 0.884, therefore 88.4% of the initial total mass has to be propellant. T
# he remaining 11.6% is for 
# the engines, the tank, and the payload. In the case of a space shuttle, it would also include the orbiter.
		description = ""
		subject.delta_v_describer().should == description
    end
  end
end