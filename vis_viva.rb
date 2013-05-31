class KeplerOrbit
	def vis_viva_orbit_relative_speed_between_bodies(central_body, non_central_body, distance_between_bodies, semi_major_axis)
		gravitational_constant = 1 # put in real number
		return Math.sqrt(gravitational_constant * central_body.mass * (2/distance_between_bodies * 1/semi_major_axis))
	end
end

class Body
	attr_reader :mass
	def initialize(mass)
		@mass = mass
	end
end

puts KeplerOrbit.new.vis_viva_orbit_relative_speed_between_bodies(Body.new(2), Body.new(1), 3, 4)
# square root of (1 * 2 * (2/3 * 1/4)) should be 0.577