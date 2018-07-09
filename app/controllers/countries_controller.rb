class CountriesController < ApplicationController
  before_action :set_country, only: [:show, :edit, :update, :destroy]
	def new
    	@country = Country.new
  	end


  def create
    @country = Country.create(country_params)
    @country.save
    redirect_to @country
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

  def show
    @country = Country.find_by(id:params[:id])
  end


  def index
   @countries = Country.all
  end

   def destroy
    @country.destroy
    redirect_to countries_url, notice: 'Country was successfully destroyed.'
   end

  private

  def set_country
      @country = Country.find(params[:id])
    end
    def country_params
      params.require(:country).permit(
        :name,
        :city,
        :description,
        :continent_name
        )
    end


end
