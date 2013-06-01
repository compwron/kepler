require_relative "spec_helper"

describe Spacecraft do

  before(:each) do
    @mass_ejection_rate = 30 # kg/sec
    @exhaust_velocity   = 3100 # m/s
    @nozzle_exit_pressure = 5000  # N/m2
    @nozzle_exit_area = 0.7 # m^2 meters squared    
  end

  subject { Spacecraft.new @mass_ejection_rate, @exhaust_velocity, @nozzle_exit_pressure, @nozzle_exit_area }

  describe "#engine_thrust_in_vacuum" do
    it "should calculate thrust" do
      # http://www.braeunig.us/space/problem.htm#4.1 problem 1.1
      expected_thrust = 96500 # Newtons
      subject.engine_thrust_in_vacuum().should == expected_thrust
    end
  end
end