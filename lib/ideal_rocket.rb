class IdealRocket
	# Tsiolkovsky rocket equation https://en.wikipedia.org/wiki/Tsiolkovsky_rocket_equation
	def delta_v(initial_total_mass, final_total_mass, effective_exhaust_velocity)
		return effective_exhaust_velocity * Math.log(initial_total_mass/final_total_mass)
	end

	def delta_v_describer(initial_total_mass, final_total_mass, effective_exhaust_velocity)
		delta_v = delta_v(initial_total_mass, final_total_mass, effective_exhaust_velocity)
		return "The change in velocity (delta v) for a body that has inital mass of #{initial_total_mass}kg, final mass of #{final_total_mass}kg, and effective exhaust velocity of #{effective_exhaust_velocity}kg/s is #{delta_v}"
	end
end