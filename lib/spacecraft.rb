class Spacecraft
	attr_reader :engine_thrust_in_vacuum
	
	def initialize(mass_ejection_rate, exhaust_velocity, nozzle_exit_pressure, nozzle_exit_area)
		@engine_thrust_in_vacuum = find_thrust(mass_ejection_rate, exhaust_velocity, nozzle_exit_pressure, nozzle_exit_area)
	end

	def find_thrust(mass_ejection_rate, exhaust_velocity, nozzle_exit_pressure, nozzle_exit_area)
		return 0
	end
end