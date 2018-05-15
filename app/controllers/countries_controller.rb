class CountriesController < ApplicationController

	def new
    	@country = Country.new
  	end


  def create
    
    if @country = Country.create(country_params)
       @country.save
    
      redirect_to @country

    else
      redirect_to new_country_path 
    end
  end

  def index

    @country = Country.find_by(country_params)
  end

  private
    def country_params
      params.require(:country).permit(
        :name,
        :city,
        :reason,
        )
    end


end
