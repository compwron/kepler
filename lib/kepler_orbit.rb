require_relative "body"

class KeplerOrbit
	# https://en.wikipedia.org/wiki/Vis-viva_equation
       def vis_viva_orbit_relative_speed_between_bodies(central_body, non_central_body, distance_between_bodies, semi_major_axis)
               gravitational_constant = 1 # put in real number
               return Math.sqrt(gravitational_constant * central_body.mass * (2/distance_between_bodies * 1/semi_major_axis))
       end
end