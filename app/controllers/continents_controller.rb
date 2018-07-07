class ContinentsController < ApplicationController
	skip_before_action :user_authenticated, only: [:index,:north_america, :south_america, :asia, :europe, :africa, :antartica, :australia]
	
	def index
	end

	def new
		@continent = Continent.new(continent_params)
       if @continent.save
    
        	redirect_to :show

    	else
      		redirect_to :new 
    	end
	end

	def show
		@country = Continent.find_by(id:params[:id])
	end

	def destroy
	    @country.destroy
	    redirect_to :continents, notice: 'Country was successfully destroyed.'
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
	end

  private
    def country_params
      params.require(:continent).permit(
        :continent_name,
        :country_name,
        :description
        )
    end


end


