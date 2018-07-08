class CountriesController < ApplicationController
  skip_before_action :user_authenticated, only: [:new, :create, :show, :index, :edit, :update, :destroy]
	def new
    	@country = Country.new
  	end


  def create
    
    @country = Country.new(country_params)
       if @country.save
        redirect_to :'countries/:id'

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
    def country_params
      params.require(:country).permit(
        :name,
        :city,
        :description,
        :continent_name
        )
    end


end
