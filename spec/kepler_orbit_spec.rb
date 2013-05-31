require_relative "spec_helper"

describe KeplerOrbit do

  subject { KeplerOrbit.new }

  ellipses_semi_major_axis = 1 # semi-major axis is:  (a>0 for ellipses,  or =0 for parabolas, and a<0 for hyperbolas)

  describe "#vis_viva_orbit_relative_speed_between_bodies" do
    it "should find a relative speed between bodies of -1.1553216002481734e-05 for central body with a mass of 2, distance_between_bodies of 3, and inverse_of_semi_major_axis of 1" do
      subject.vis_viva_orbit_relative_speed_between_bodies(Body.new(2), 3, ellipses_semi_major_axis).should be_within(0.1).of(-1.155e-05)
    end
  end

  describe "#vis_visa_describer" do
  	it "should print a description of the imputs and outputs of an equation" do
  		relative_speed = subject.vis_viva_orbit_relative_speed_between_bodies(Body.new(2), 3, ellipses_semi_major_axis)
  		description = "For a central body with mass 2kg, distance between bodies of 3km, and inverse of semi major axis of 1, relative speed between bodies is #{relative_speed}"
  		subject.vis_visa_describer(Body.new(2), 3, ellipses_semi_major_axis).should == description
  	end
  end

end