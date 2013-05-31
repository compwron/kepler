require_relative "spec_helper"

describe KeplerOrbit do

  subject { KeplerOrbit.new }

  ellipses_semi_major_axis = 1 # semi-major axis is:  (a>0 for ellipses,  or =0 for parabolas, and a<0 for hyperbolas)

  describe "#vis_viva_orbit_relative_speed_between_bodies" do
    it "should find a relative speed between bodies of -1.414 for central body with a mass of 2, distance_between_bodies of 3, and inverse_of_semi_major_axis of 1" do
      subject.vis_viva_orbit_relative_speed_between_bodies(Body.new(2), 3, ellipses_semi_major_axis).should == -1.4142135623730951
    end
  end

end