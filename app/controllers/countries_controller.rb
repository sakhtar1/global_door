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


  def edit
  end

  def update
    respond_to do |format|
      if @country.update(country_params)
        format.html { redirect_to @country, notice: 'Country was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


  def index
    @country = Country.find_by(id:params[:id])
   
  end

   def destroy
    @country.destroy
    
   end

  private
    def country_params
      params.require(:country).permit(
        :name,
        :country,
        :reason
        )
    end


end
