class ContinentsController < ApplicationController
	skip_before_action :user_authenticated, only: [:index,:north_america, :south_america, :asia, :europe, :africa, :antartica, :australia]
	
	def index
	end

	def north_america
	end

	def south_america
	end

	def asia
	end

	def europe
	end

	def africa
	end

	def antartica
	end

	def australia
		@country = Country.new
	end

end
