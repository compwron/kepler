require_relative "spec_helper"

describe Spacecraft do

# mass_ejection_rate, exhaust_velocity, nozzle_exit_pressure, exit_area
  # subject { Spacecraft.new() }

  # let(:mass_ejection_rate) { 30 } # kg/sec
  # let(:exhaust_velocity) { 3100 } # m/s
  # let(:nozzle_exit_pressure) { 5 } # kPa
  # let(:nozzle_exit_area) { 0.7 } # m^2 meters squared

  before(:each) do
    @mass_ejection_rate = 30 # kg/sec
    @exhaust_velocity   = 3100 # m/s
    @nozzle_exit_pressure = 5  # kPa
    @nozzle_exit_area = 0.7 # m^2 meters squared    
  end

  subject { Spacecraft.new @mass_ejection_rate, @exhaust_velocity, @nozzle_exit_pressure, @nozzle_exit_area }

  describe "#engine_thrust_in_vacuum" do
    it "should calculate thrust" do
      expected_thrust = 96500 # Newtons
      subject.engine_thrust_in_vacuum().should == expected_thrust
    end
  end
end