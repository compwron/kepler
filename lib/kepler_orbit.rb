require_relative "body"
require_relative "gravitational_constant"

class KeplerOrbit
  # https://en.wikipedia.org/wiki/Vis-viva_equation
  def vis_viva_orbit_relative_speed_between_bodies(central_body, distance_between_bodies, inverse_of_semi_major_axis)
                               # semi-major axis is:  (a>0 for ellipses,  or =0 for parabolas, and a<0 for hyperbolas)
    relative_speed_between_bodies_squared = GravitationalConstant.new.constant * central_body.mass * (2/distance_between_bodies - inverse_of_semi_major_axis)
    if (relative_speed_between_bodies_squared < 0) then
      return Math.sqrt(relative_speed_between_bodies_squared * -1) * -1
    else
      return Math.sqrt(relative_speed_between_bodies_squared)
    end
  end

  def vis_visa_describer(central_body, distance_between_bodies, inverse_of_semi_major_axis)
    relative_speed_between_bodies = vis_viva_orbit_relative_speed_between_bodies(central_body, distance_between_bodies, inverse_of_semi_major_axis)
    "For a central body with mass #{central_body.mass}kg, distance between bodies of #{distance_between_bodies}km, and inverse of semi major axis of #{inverse_of_semi_major_axis}, relative speed between bodies is #{relative_speed_between_bodies}"
  end
end

