require_relative "body"

class KeplerOrbit
  # https://en.wikipedia.org/wiki/Vis-viva_equation
  def vis_viva_orbit_relative_speed_between_bodies(central_body, distance_between_bodies, inverse_of_semi_major_axis)
    gravitational_constant = 1 # put in real number
                               # semi-major axis is:  (a>0 for ellipses,  or =0 for parabolas, and a<0 for hyperbolas)
    relative_speed_between_bodies_squared = gravitational_constant * central_body.mass * (2/distance_between_bodies - inverse_of_semi_major_axis)
    if (relative_speed_between_bodies_squared < 0) then
      return Math.sqrt(relative_speed_between_bodies_squared * -1) * -1
    else
      return Math.sqrt(relative_speed_between_bodies_squared)
    end
  end
end

