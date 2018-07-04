class CountriesController < ApplicationController

	def new
    	@country = Country.new
  	end


  def create
    
    @country = Country.new(country_params)
       if @country.save
    
        redirect_to @country.current_user

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
    redirect_to countries_url, notice: 'Country was successfully destroyed.'
   end

  private
    def country_params
      params.require(:country).permit(
        :name,
        :city,
        :reason
        )
    end


end
